using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.Linq;
using System.Data.Linq.Mapping;
using System.Reflection;
using System.Linq.Expressions;
using System.ComponentModel;

using Micajah.FileService.WebControls;
using Micajah.FileService.Client;
using web.micajah.backoffice.AppCode;

namespace web.micajah.backoffice.Pages
{
    public partial class PortfolioEdit : System.Web.UI.Page
    {
        private ImageUpload iuSpecial
        {
            get { return Portfolio_Edit.FindControl("iuSpecial") as ImageUpload; }
        }

        private Panel InsertPanel
        {
            get { return Portfolio_Edit.FindControl("InsertPanel") as Panel; }
        }

        private Panel InsertPanelFiles
        {
            get { return Portfolio_Edit.FindControl("InsertPanelFiles") as Panel; }
        }        

        private string CurrentPortfolio
        {
            get { return Request.QueryString["Portfolio"]; }
        }

        private void RegisterAlert(string message)
        {
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "AFalert", String.Format("<script language=\"javascript\" type=\"text/javascript\" >alert(\"{0}\");</script>", message), false);
        }

        private SimpleUpload ScreenshotsUpload
        {
            get
            { return Portfolio_Edit.FindControl("suScreenShots") as SimpleUpload; }
        }

        private LinkButton AcceptButton
        {
            get
            { return Portfolio_Edit.FindControl("lbAccept") as LinkButton; }
        }

        private LinkButton CancelButton
        {
            get
            { return Portfolio_Edit.FindControl("lbCancel") as LinkButton; }
        }

        private FileList flScreenShots
        {
            get
            { return Portfolio_Edit.FindControl("flScreenShots") as FileList; }
        }

        protected void suScreenShots_Init(object sender, EventArgs e)
        {
            ScreenshotsUpload.LocalObjectId = CurrentPortfolio;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Portfolio_Edit.ItemInserted += new DetailsViewInsertedEventHandler(Portfolio_Edit_ItemInserted);
            Portfolio_Edit.ItemUpdated += new DetailsViewUpdatedEventHandler(Portfolio_Edit_ItemUpdated);
            Portfolio_Edit.ItemDeleting += new DetailsViewDeleteEventHandler(Portfolio_Edit_ItemDeleting);
            Portfolio_Edit.ItemDeleted += new DetailsViewDeletedEventHandler(Portfolio_Edit_ItemDeleted);
            Portfolio_Edit.ItemCommand += new DetailsViewCommandEventHandler(Portfolio_Edit_ItemCommand);

            if (!String.IsNullOrEmpty(CurrentPortfolio))
            {
                LinqDataSource_Edit.Where = "PortfolioGuid=Guid(\"" + CurrentPortfolio + "\")";
                Portfolio_Edit.ChangeMode(DetailsViewMode.Edit);

                iuSpecial.LocalObjectId = CurrentPortfolio;
                iuSpecial.Visible = true;                
                flScreenShots.LocalObjectId = CurrentPortfolio;
                flScreenShots.DataBind();
                flScreenShots.Visible = true;
                ScreenshotsUpload.Visible = true;
                InsertPanel.Visible = false;
                InsertPanelFiles.Visible = false;
            }
            else
            {
                iuSpecial.Visible = false;
                flScreenShots.Visible = false;
                ScreenshotsUpload.Visible = false;
                InsertPanelFiles.Visible = true;
                InsertPanel.Visible = true;
            }
        }

        void lbPortfolioScreenshots_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName != "EditPortfolio") return;
            if (iuSpecial.RejectChanges()) Response.Redirect("PortfolioDetail.aspx?Portfolio=" + e.CommandArgument.ToString());
            else RegisterAlert("Can't save screenshot list changes for current Portfolio");
        }

        void RedirectToList()
        {
            Response.Redirect("~/Pages/PortfolioList.aspx");
        }

        void Portfolio_Edit_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            RedirectToList();
        }

        void Portfolio_Edit_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
        {
            if (!iuSpecial.AcceptChanges())
                RegisterAlert("Can't save logo for current account");
            else
                if (!ScreenshotsUpload.AcceptChanges())
                    RegisterAlert("Can't save screenshot list changes for current Portfolio");
                else
                    RedirectToList();
        }

        public static string DeletePortfolio(string DeletePortfolioGuid)
        {
            string DeleteResult = Micajah.FileService.Client.Access.DeleteFiles(UploadControlSettings.OrganizationId, UploadControlSettings.DepartmentId, DeletePortfolioGuid, "Special", null);
            if (!String.IsNullOrEmpty(DeleteResult)) return "Cannot delete logo, associated with this account";

            DeleteResult = Micajah.FileService.Client.Access.DeleteFiles(UploadControlSettings.OrganizationId, UploadControlSettings.DepartmentId, DeletePortfolioGuid, "Portfolio", null);
            if (!String.IsNullOrEmpty(DeleteResult)) return "Can't delete some of the screenshots for current portfolio";

            return null;
        }

        void Portfolio_Edit_ItemDeleting(object sender, DetailsViewDeleteEventArgs e)
        {
            string DeleteResult = DeletePortfolio(CurrentPortfolio);
            if (!String.IsNullOrEmpty(DeleteResult))
            {
                e.Cancel = true;
                RegisterAlert(DeleteResult);
                return;
            }
        }

        void Portfolio_Edit_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            RedirectToList();
        }

        void Portfolio_Edit_ItemCommand(object sender, DetailsViewCommandEventArgs e)
        {
            if (e.CommandName.ToLower() == "cancel")
            {
                if (iuSpecial.RejectChanges())
                    if (ScreenshotsUpload.RejectChanges())
                        RedirectToList();
                    else RegisterAlert("Can't save screenshot list changes for current Portfolio");
                else RegisterAlert("Can't reject logo changes");
            }
        }
    }
}
