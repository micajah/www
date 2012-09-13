using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web.micajah.www
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            if (SiteMap.CurrentNode != null)
            {
                Page.Header.Title = string.Format("Micajah - Atlanta Software Development :: {0}", SiteMap.CurrentNode["titleheader"] );

                //keywords taken from site map file
                if (SiteMap.CurrentNode["keywords"] != null)
                {
                    Micajah.Common.MetaTag.AddMetaTag(this.Page, "keywords", SiteMap.CurrentNode["keywords"]);
                }
                if (SiteMap.CurrentNode.Description != null)
                {
                    Micajah.Common.MetaTag.AddMetaTag(this.Page, "description", SiteMap.CurrentNode.Description);
                }
                string s = SiteMap.CurrentNode["DisableRightBar"];
                if (!string.IsNullOrEmpty(s) && s.ToLower() == Boolean.TrueString.ToLower())
                {
                    phSideBar.Visible = false;
                    ContentClass.Text = " class='WithOutSideBar'";
                }
                else
                {
                    phSideBar.Visible = true;
                    ContentClass.Text = " class='WithSideBar'";
                }
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Micajah.Common.SiteMap objSiteMap = new Micajah.Common.SiteMap();
            litMainMenu.Text = objSiteMap.ReturnSiteMapHtmlAsBulletedList(SiteMapData, 1);
        }
    }
}
