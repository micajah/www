using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Collections.Generic;
using System.Reflection;
using System.Linq.Expressions;
using System.ComponentModel;

using Micajah.FileService.WebControls;
using Micajah.FileService.Client;
using web.micajah.backoffice.AppCode;

namespace web.micajah.backoffice.Pages
{
    public partial class PortfolioList : System.Web.UI.Page
    {           

        

        private void RegisterAlert(string message)
        {
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "AFalert", String.Format("<script language=\"javascript\" type=\"text/javascript\" >alert('{0}');</script>", message), false);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Portfolio_List.RowEditing += new GridViewEditEventHandler(Portfolio_List_RowEditing);
            Portfolio_List.Action += new EventHandler<Micajah.Common.WebControls.CommonGridViewActionEventArgs>(Portfolio_List_Action);
            Portfolio_List.RowDeleting += new GridViewDeleteEventHandler(Portfolio_List_RowDeleting);            
        }       
        
        void RedirectToEdit(string q)
        {
            Response.Redirect("~/Pages/PortfolioEdit.aspx?"+q);
        }

        void Portfolio_List_RowEditing(object sender, GridViewEditEventArgs e)
        {
            if (e.NewEditIndex < 0 || e.NewEditIndex >= Portfolio_List.DataKeys.Count) return;
            RedirectToEdit("Portfolio=" + Portfolio_List.DataKeys[e.NewEditIndex].Value);
        }

        void Portfolio_List_Action(object sender, Micajah.Common.WebControls.CommonGridViewActionEventArgs e)
        {
            switch (e.Action)
            {
                case Micajah.Common.WebControls.CommandActions.Add:
                    RedirectToEdit("IsNew=True");
                break;
                case Micajah.Common.WebControls.CommandActions.Select:
                /*if (e.RowIndex < 0 || e.RowIndex >= Portfolio_List.DataKeys.Count) return;                    
                Response.Redirect(String.Format("PortfolioEdit.aspx?Portfolio={0}", Portfolio_List.DataKeys[e.RowIndex].Value));*/
                break;
            }
        }

        void Portfolio_List_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string DeletePortfolioGuid = Portfolio_List.DataKeys[e.RowIndex].Value.ToString();
            string DeleteResult = PortfolioEdit.DeletePortfolio(DeletePortfolioGuid);
             if (!String.IsNullOrEmpty(DeleteResult))
            {
                e.Cancel = true;
                RegisterAlert("Can't delete some of the screenshots for current portfolio");
            }
            Portfolio_List.DataBind();
        }       

        protected void LinqDataSource_List_Selecting(object sender, LinqDataSourceSelectEventArgs e)
        {
            BackOfficeDataContext db = new BackOfficeDataContext();
            var Portfolios = from p in db.BackOffice_Portfolios join a in db.BackOffice_Accounts on p.AccountGuid equals a.AccountGuid orderby p.Active, p.PortfolioOrder, a.AccountName, p.PortfolioName
                          select new {  PortfolioGuid = p.PortfolioGuid, 
                                        PortfolioName = p.PortfolioName,
                                        AccountGuid = p.AccountGuid, 
                                        AccountName = a.AccountName,
                                        PortfolioOrder = p.PortfolioOrder,
                                        Active = p.Active
                          };
            e.Result = Portfolios;
        }

        protected void LinqDataSource_List_Deleting(object sender, LinqDataSourceDeleteEventArgs e)
        {
            BackOffice_Portfolio OldPortfolio = (BackOffice_Portfolio)e.OriginalObject;
            BackOfficeDataContext db = new BackOfficeDataContext();
            BackOffice_Portfolio bp = (from p in db.BackOffice_Portfolios where p.PortfolioGuid == OldPortfolio.PortfolioGuid select p).Single<BackOffice_Portfolio>();
            db.BackOffice_Portfolios.DeleteOnSubmit(bp);
            try { db.SubmitChanges(); }
            catch (ChangeConflictException)
            {
                db.ChangeConflicts.ResolveAll(RefreshMode.KeepChanges);
            }
            e.Cancel = true;
        }
    }
}