using System;

namespace web.micajah.www.work
{
    public partial class Default : System.Web.UI.Page
    {
        System.Data.DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            web.micajah.www.BackOfficePortfolio.IportfolioClient p = new web.micajah.www.BackOfficePortfolio.IportfolioClient();
            ds = p.GetPortfolioList();
            if (ds != null && ds.Tables.Count > 0)
            {
                rpPortfolio.DataSource = ds.Tables[0];
                rpPortfolio.DataBind();
            }
        }        
    }
}
