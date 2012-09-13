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
using web.micajah.backoffice.AppCode;

namespace web.micajah.backoffice.Pages
{
    public partial class PortfolioDetail : System.Web.UI.Page
    {
        private SimpleUpload ScreenshotsUpload
        {
            get
            { return Portfolio_Detail.FindControl("suScreenShots") as SimpleUpload; }
        }

        private LinkButton AcceptButton
        {
            get
            { return Portfolio_Detail.FindControl("lbAccept") as LinkButton; }
        }

        private LinkButton CancelButton
        {
            get
            { return Portfolio_Detail.FindControl("lbCancel") as LinkButton; }
        }

        private FileList flScreenShots
        {
            get
            { return Portfolio_Detail.FindControl("flScreenShots") as FileList; }
        }

        protected string CurrentPortfolio
        {
            get
            { return Request.QueryString["Portfolio"]; }
        }

        private void GotoPortfolioList()
        {
            Response.Redirect("PortfolioList.aspx");
        }

        private void RegisterAlert(string message)
        {
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "AFalert", String.Format("<script language=\"javascript\" type=\"text/javascript\" >alert('{0}');</script>", message), false);
        }

        protected void suScreenShots_Init(object sender, EventArgs e)
        {
            ScreenshotsUpload.LocalObjectId = CurrentPortfolio;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (String.IsNullOrEmpty(CurrentPortfolio)) GotoPortfolioList();
            Portfolio_Detail.ItemUpdating += new DetailsViewUpdateEventHandler(Portfolio_Detail_ItemUpdating);
            Portfolio_Detail.Action += new EventHandler<Micajah.Common.WebControls.MagicFormActionEventArgs>(Portfolio_Detail_Action);
            lbEditPortfolio.Command += new CommandEventHandler(lbEditPortfolio_Command);
            LinqDataSource_Detail.Where = "PortfolioGuid=Guid(\"" + CurrentPortfolio + "\")";
            lbEditPortfolio.CommandArgument = CurrentPortfolio;
        }

        void Portfolio_Detail_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            e.Cancel = true;
            if (ScreenshotsUpload.AcceptChanges()) GotoPortfolioList();
            else RegisterAlert("Can't save screenshot list changes for current Portfolio");
        }

        void Portfolio_Detail_Action(object sender, Micajah.Common.WebControls.MagicFormActionEventArgs e)
        {
            if (e.Action != Micajah.Common.WebControls.CommandActions.Cancel) return;
            if (ScreenshotsUpload.RejectChanges()) GotoPortfolioList();
            else RegisterAlert("Can't reject screenshot list changes for current Portfolio");
        }

        protected void lbEditPortfolio_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName != "EditPortfolio") return;
            if (ScreenshotsUpload.RejectChanges()) Response.Redirect("PortfolioEdit.aspx?Portfolio=" + e.CommandArgument.ToString());
            else RegisterAlert("Can't save screenshot list changes for current Portfolio");
        }
    }
}