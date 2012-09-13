using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace web.micajah.www.Controls
{
    public partial class LeftMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SiteMapNode StartTopNode;
            SiteMapNode PageCurrentNode;
            string MenuTitle;
            string MenuTitleLink;
            string ParentTitle = string.Empty;
            string ParentLink = string.Empty;


            PageCurrentNode = SiteMap.CurrentNode;

            SiteMapDataSource siteMapData = new SiteMapDataSource();

            bool HasChildNodes = SiteMap.CurrentNode.HasChildNodes;
            //If HasChildNodes=True the up one level, otherwise, up two levels

            SiteMapNode ParentLevel1 = SiteMap.CurrentNode.ParentNode;

            MenuTitle = SiteMap.CurrentNode.Title;
            MenuTitleLink = SiteMap.CurrentNode.Url;
            StartTopNode = SiteMap.CurrentNode;

            if (ParentLevel1 != null)
            {
                if (ParentLevel1.Title != "Home")
                {
                    MenuTitle = ParentLevel1.Title;
                    MenuTitleLink = ParentLevel1.Url;
                    StartTopNode = ParentLevel1;

                    //If CurrentNode has children only step up one level, if no children step up 2x
                    if (HasChildNodes == false)
                    {
                        SiteMapNode ParentLevel2 = ParentLevel1.ParentNode;

                        if (ParentLevel2 != null)
                        {
                            if (ParentLevel2.Title != "Home")
                            {
                                MenuTitle = ParentLevel2.Title;
                                MenuTitleLink = ParentLevel2.Url;
                                StartTopNode = ParentLevel2;
                            }
                        }
                    }
                }
            }

            //Determine Parent of the Start Node
            SiteMapNode StartParentNode = StartTopNode.ParentNode;
            if (StartParentNode != null)
            {
                ParentLink = StartParentNode.Url;
                ParentTitle = StartParentNode.Title;

            }

            litLeftMenuTitle.Text = string.Format("<a href=\"{0}\">{1}</a>", MenuTitleLink, MenuTitle);

            string output = string.Empty;

            foreach (SiteMapNode node in StartTopNode.ChildNodes)
            {
                if (Micajah.Common.SiteMap.ShowBetaLink(node))
                {
                    output += string.Format("<li> &nbsp;<a{2} href=\"{1}\">{0}</a></li>\r\n", node.Title, node.Url, GetSelectedHTMLAttribute(SiteMap.CurrentNode, node));
                }
                if (node.HasChildNodes == true && (SiteMap.CurrentNode == node || ParentLevel1 == node))
                {
                    foreach (SiteMapNode childnode in node.ChildNodes)
                    {
                        if (Micajah.Common.SiteMap.ShowBetaLink(childnode))
                        {
                            output += string.Format("<li> &nbsp; &nbsp; &nbsp; <a{2} href=\"{1}\">- {0}</a></li>\r\n", childnode.Title, childnode.Url, GetSelectedHTMLAttribute(SiteMap.CurrentNode, childnode));
                        }
                    }

                }
            }

            if (!ParentTitle.Equals(string.Empty))
            {
                //output += string.Format("<li><a href=\"{0}\">< Back to {1}</a></li>", ParentLink, ParentTitle);
                litLeftMenuBack.Text = string.Format("<br><a id=\"leftMenuBack\" href=\"{0}\">< Back to {1}</a>", ParentLink, ParentTitle);
            }
            litLeftMenu.Text = output;
        }



        private string GetSelectedHTMLAttribute(SiteMapNode currentNode, SiteMapNode iteratedNode)
        {
            string output = string.Empty;

            if (currentNode == iteratedNode)
            {
                output = " class=\"selected\"";
            }
            else
            {
                output = "";
            }

            return output;
        }
    }
}