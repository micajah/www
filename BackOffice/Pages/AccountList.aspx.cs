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
    public partial class AccountList : System.Web.UI.Page
    {
        private void RegisterAlert(string message)
        {
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "AFalert", String.Format("<script language=\"javascript\" type=\"text/javascript\" >alert('{0}');</script>", message), false);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Account_List.RowEditing += new GridViewEditEventHandler(AccountList_RowEditing);
            Account_List.Action += new EventHandler<Micajah.Common.WebControls.CommonGridViewActionEventArgs>(Account_List_Action);
            Account_List.RowDeleting += new GridViewDeleteEventHandler(Account_List_RowDeleting);
        }

        void Account_List_Action(object sender, Micajah.Common.WebControls.CommonGridViewActionEventArgs e)
        {
            if (e.Action != Micajah.Common.WebControls.CommandActions.Add) return;
            Server.Transfer("AccountEdit.aspx");
        }

        void AccountList_RowEditing(object sender, GridViewEditEventArgs e)
        {
            if (e.NewEditIndex < 0 || e.NewEditIndex >= Account_List.DataKeys.Count) return;
            Response.Redirect("~/Pages/AccountEdit.aspx?Account=" + Account_List.DataKeys[e.NewEditIndex].Value.ToString());
        }

        void Account_List_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string DeleteAccountID = Account_List.DataKeys[e.RowIndex].Value.ToString();
            // delete images
            string DeleteResult = Micajah.FileService.Client.Access.DeleteFiles(UploadControlSettings.OrganizationId, UploadControlSettings.DepartmentId, DeleteAccountID, "Account", null);
            if (!String.IsNullOrEmpty(DeleteResult))
            {
                e.Cancel = true;
                RegisterAlert("Cannot delete logo, associated with this account");
                return;
            }
            // delete portfolios and its images
            BackOfficeDataContext db = new BackOfficeDataContext();
            var bp = (from p in db.BackOffice_Portfolios where p.AccountGuid.ToString() == DeleteAccountID select p);
            foreach (var bps in bp)
            {
                //try to delete its images
                string DeletePortfolioID = ((BackOffice_Portfolio)bps).PortfolioGuid.ToString();
                DeleteResult = Micajah.FileService.Client.Access.DeleteFiles(UploadControlSettings.OrganizationId, UploadControlSettings.DepartmentId, DeletePortfolioID, "Portfolio", null);
                if (!String.IsNullOrEmpty(DeleteResult))
                {
                    e.Cancel = true;
                    RegisterAlert("Can't delete some of the screenshots for related portfolio " + ((BackOffice_Portfolio)bps).PortfolioName);
                    return;
                }
                db.BackOffice_Portfolios.DeleteOnSubmit(bps);
            }
            try { db.SubmitChanges(); }
            catch (ChangeConflictException)
            {
                db.ChangeConflicts.ResolveAll(RefreshMode.KeepChanges);
            }
        }
    }
}
