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
/// Summary description for MetaTag
/// </summary>
/// 

namespace Micajah.Common
{

    public class MetaTag
    {
        public MetaTag()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public static void AddMetaTag(Page thisPage, String name, String content)
        {
            HtmlHead header = (HtmlHead)thisPage.Header;
            if (header != null)
            {
                HtmlMeta meta = new HtmlMeta();
                // Loop through all the controls in the Header
                foreach (Control ctrl in header.Controls)
                {
                    // Check if the control is a Meta Tag
                    if (ctrl is HtmlMeta)
                    {
                        // Get the Meta Tag and check if the name is the same
                        meta = (HtmlMeta)ctrl;
                        if (name.Equals(meta.Name, StringComparison.InvariantCultureIgnoreCase))
                        {
                            // Since the Meta Tag already exists, simply update and exit
                            meta.Content = content;
                            return;
                        }
                    }
                }
                meta = new HtmlMeta();
                meta.Name = name;
                meta.Content = content;
                header.Controls.Add(meta);
            }
        }

    }
}
