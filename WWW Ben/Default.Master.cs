using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WWW_Site_2
{
    public partial class newSite2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SetPageTitleDesc();
        }

        protected void SetPageTitleDesc()
        {
            // Set the page's title, if necessary
            if (string.IsNullOrEmpty(Page.Title) || Page.Title == "Untitled Page")
            {
                // Is this page defined in the site map?
                string newTitle = null;
                string desc = null;

                SiteMapNode current = SiteMap.CurrentNode;
                if (current != null)
                {
                    newTitle = current.Title;
                    desc = current.Description;
                }
                else
                {
                    // Determine the filename for this page
                    newTitle = System.IO.Path.GetFileNameWithoutExtension(Request.PhysicalPath);
                }


                //Default Description
                if (string.IsNullOrEmpty(desc))
                {
                    desc = "15+ years experience. Satisfaction guarantee.  First call consult is Free. Asp.NET Azure C#";
                }

                Page.Title = newTitle;
                Page.MetaDescription = desc;
                
            }

            
        }
    }
}