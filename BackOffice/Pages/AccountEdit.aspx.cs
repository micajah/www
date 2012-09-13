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
using Micajah.FileService.WebControls;
using Micajah.FileService.Client;

using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Collections.Generic;
using System.Reflection;
using System.Linq.Expressions;
using System.ComponentModel;

using web.micajah.backoffice.AppCode;

namespace web.micajah.backoffice.Pages
{
    public partial class AccountEdit : System.Web.UI.Page
    {
        private ImageUpload LogoUpload
        {
            get { return Account_Edit.FindControl("iuLogo") as ImageUpload; }
        }

        private FileList LogoFile
        {
            get { return Account_Edit.FindControl("flLogo") as FileList; }
        }

        private Panel InsertPanel
        {
            get { return Account_Edit.FindControl("InsertPanel") as Panel; }
        }

        private string CurrentAccount
        {
            get { return Request.QueryString["Account"]; }
        }

        private void GotoAccountList()
        {
            Response.Redirect("~/Pages/AccountList.aspx");
        }

        private void RegisterAlert(string message)
        {
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "AFalert", String.Format("<script language=\"javascript\" type=\"text/javascript\" >alert('{0}');</script>", message), false);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Account_Edit.ItemUpdated += new DetailsViewUpdatedEventHandler(Account_Edit_ItemUpdated);
            Account_Edit.ItemDeleting += new DetailsViewDeleteEventHandler(Account_Edit_ItemDeleting);
            Account_Edit.ItemDeleted += new DetailsViewDeletedEventHandler(Account_Edit_ItemDeleted);
            Account_Edit.ItemCommand += new DetailsViewCommandEventHandler(Account_Edit_ItemCommand);
            Account_Edit.DataBound += new EventHandler(Account_Edit_DataBound);
            LinqDataSource_Edit.Inserted += new EventHandler<LinqDataSourceStatusEventArgs>(LinqDataSource_Edit_Inserted);
            if (CurrentAccount == null)
            {
                Account_Edit.ChangeMode(DetailsViewMode.Insert);
            }
            else
            {
                Account_Edit.ChangeMode(DetailsViewMode.Edit);
                LinqDataSource_Edit.Where = "AccountGuid=Guid(\"" + CurrentAccount + "\")";
            }
        }

        protected void Account_Edit_DataBound(object sender, EventArgs e)
        {
            if (CurrentAccount == null)
            {
                LogoUpload.Visible = false;
                InsertPanel.Visible = true;
            }
            else
            {
                LogoUpload.LocalObjectId = CurrentAccount;
            }
        }

        void LinqDataSource_Edit_Inserted(object sender, LinqDataSourceStatusEventArgs e)
        {
            web.micajah.backoffice.AppCode.BackOffice_Account InsertedAccount = (web.micajah.backoffice.AppCode.BackOffice_Account)e.Result;
            Server.Transfer("AccountEdit.aspx?Account=" + InsertedAccount.AccountGuid.ToString());
        }

        void Account_Edit_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            if (LogoUpload.AcceptChanges()) GotoAccountList();
            else RegisterAlert("Can't save logo for current account");
        }

        public static string DeleteAccount(string DeleteAccountGuid)
        {
            string DeleteResult = Micajah.FileService.Client.Access.DeleteFiles(UploadControlSettings.OrganizationId, UploadControlSettings.DepartmentId, DeleteAccountGuid, "Account", null);
            if (!String.IsNullOrEmpty(DeleteResult)) return "Cannot delete logo, associated with this account";

            BackOfficeDataContext db = new BackOfficeDataContext();
            var bp = (from p in db.BackOffice_Portfolios where p.AccountGuid.ToString() == DeleteAccountGuid select p);
            foreach (var bps in bp)
            {
                //try to delete its images
                string DeletePortfolioID = ((BackOffice_Portfolio)bps).PortfolioGuid.ToString();
                DeleteResult = PortfolioEdit.DeletePortfolio(DeletePortfolioID);
                if (!string.IsNullOrEmpty(DeleteResult)) return "Can't delete some of the screenshots for related portfolio " + ((BackOffice_Portfolio)bps).PortfolioName;
                db.BackOffice_Portfolios.DeleteOnSubmit(bps);
            }
            try { db.SubmitChanges(); }
            catch (ChangeConflictException)
            {
                db.ChangeConflicts.ResolveAll(RefreshMode.KeepChanges);
            }

            return null;
        }

        void Account_Edit_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {
            string DeleteResult = DeleteAccount(CurrentAccount);
            if (!String.IsNullOrEmpty(DeleteResult))
            {
                e.Cancel = true;
                RegisterAlert("Cannot delete logo, associated with this account");
                return;
            }
        }

        void Account_Edit_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            GotoAccountList();
        }

        void Account_Edit_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            if (e.CommandName.ToLower() == "cancel")
            {
                if (LogoUpload.RejectChanges()) GotoAccountList();
                else RegisterAlert("Can't reject logo changes");
            }
        }
    }
}