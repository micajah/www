using System;
using System.Data;
using System.Configuration;

using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;


/// <summary>
/// Summary description for SiteMap
/// </summary>
/// 
namespace Micajah.Common
{

    public class SiteMap
    {

        

        
        public SiteMap()
        {
            
        }

        public static bool ShowBetaLink(SiteMapNode n)
        {
            bool betaEnvironment;

            string appEnvironment = System.Web.Configuration.WebConfigurationManager.AppSettings["Environment"];
            if (appEnvironment == "Beta") { betaEnvironment = true; } else { betaEnvironment = false; }

            string s = n["BetaOnly"];
            if (!string.IsNullOrEmpty(s) && s.ToLower() == Boolean.TrueString.ToLower() && betaEnvironment == false)
            {
                return false;
            }
            else
            {
                return true;
            }

        }

        public string ReturnSiteMapHtmlAsBulletedList(SiteMapDataSource siteMapData, int depth)
        {
            SiteMapDataSourceView siteMapView = ((SiteMapDataSourceView)(siteMapData.GetView(string.Empty)));
            SiteMapNodeCollection nodes = ((SiteMapNodeCollection)(siteMapView.Select(DataSourceSelectArguments.Empty)));
            return string.Format("<ul class='navigation'>{0}</ul>", GetSiteMapAsBulletedList(nodes, depth));
            
        }

        public string ReturnSiteMapLeftMenuHTML(SiteMapDataSource siteMapData)
        {
            string ReturnHTML;

            SiteMapNode node = siteMapData.Provider.GetParentNodeRelativeToCurrentNodeAndHintDownFromParent(1, 2);

            SiteMapNode node1 = node.ParentNode;

            ReturnHTML = node1.Title;

            return ReturnHTML;
        }

        private string GetSiteMapAsBulletedList(SiteMapNodeCollection nodes, int depth)
        {
            return GetSiteMapAsBulletedList(nodes, depth, 0);
        }

        private string GetSiteMapAsBulletedList(SiteMapNodeCollection nodes, int depth, int levelcount)
        {
            string output = string.Empty;

            string currentPath = HttpContext.Current.Request.Path;

            //string currentPosting = HttpContext.Current.Request.Path ...Posting.DisplayName;

            foreach (SiteMapNode node in nodes)
            {
               
                if (ShowBetaLink(node))
                {

                    string separator;
                    if (levelcount == 0)
                    {
                        separator = "";
                    }
                    else
                    {
                        separator = "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;";
                    }

                    if (Micajah.Common.SiteMap.GetBaseFolder(currentPath) == Micajah.Common.SiteMap.GetBaseFolder(node.Url))
                    {
                        output += string.Format("<li>{2}<a class=\"selected\" href=\"{0}\">{1}</a></li>", node.Url, node.Title, separator);
                    }
                    else
                    {
                        output += string.Format("<li>{2}<a href=\"{0}\">{1}</a></li>", node.Url, node.Title, separator);
                    }

                    if (node.HasChildNodes && levelcount < depth)
                    {
                        levelcount += 1;
                        output += string.Format("{0}", GetSiteMapAsBulletedList(node.ChildNodes, depth, levelcount));
                    }
                }
            }

            return output;
        }

       

        public static string GetBaseFolder(string rawUrl)
        {
            //Get the IIS App Path
            string appPath = HttpContext.Current.Request.ApplicationPath.ToString();

            //Remove the App Path
            string TrimUrl = rawUrl.Substring(appPath.Length);

            //remove default.aspx if exists
            TrimUrl = TrimUrl.Replace("default.aspx", "");

            //remove first leading "/"
            if (TrimUrl.Length > 0)
            {
                if (TrimUrl.Substring(0, 1) == "/")
                {
                    TrimUrl = TrimUrl.Substring(1);
                }
            }
          
            //Determine position of the next "/"
            if (TrimUrl.Length > 0)
            {
                int Index = TrimUrl.IndexOf("/", 1);

                if (TrimUrl.IndexOf("/", 1) > 0)
                {
                    TrimUrl = TrimUrl.Remove(Index);
                }
            }
            

           return TrimUrl;

        }

    }

}