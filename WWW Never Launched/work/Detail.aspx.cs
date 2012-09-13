using System;
using System.Data;
using web.micajah.www.BackOfficePortfolio;
using System.Collections;

namespace web.micajah.www.work
{
    public partial class Detail : System.Web.UI.Page
    {
        #region Members

        private Guid? m_PortfolioGuid;

        #endregion

        #region Private Properties

        private Guid PortfolioGuid
        {
            get
            {
                if (!m_PortfolioGuid.HasValue)
                {
                    m_PortfolioGuid = Guid.Empty;
                    try { m_PortfolioGuid = new Guid(Request.QueryString["Portfolio"]); }
                    catch { }
                }
                return m_PortfolioGuid.Value;
            }
        }

        #endregion

        protected void Page_Prerender(object sender, EventArgs e)
        {
            IportfolioClient p = new IportfolioClient();            
            DataSet dsPortfolio = p.GetPortfolioDetail(PortfolioGuid);      
            if (dsPortfolio != null)
            {
                if (dsPortfolio.Tables.Count > 0)
                {
                    DataTable dt = dsPortfolio.Tables[0];
                    if (dt.Rows.Count > 0)
                    {
                        DataRow dr = dt.Rows[0];

                        AccountLabel.Text = dr["AccountName"].ToString();
                        //NameLiteral.Text = dr["PortfolioName"].ToString();
                        litProjectTitle.Text = dr["PortfolioName"].ToString();
                        litAccountName.Text = dr["AccountName"].ToString();
                        TextLiteral.Text = dr["Text"].ToString();
                        OverviewLiteral.Text = dr["Overview"].ToString();
                        PartnersLiteral.Text = dr["Partners"].ToString();
                        TechnologiesLiteral.Text = dr["Technologies"].ToString();

                        if (dsPortfolio.Tables[1].Rows.Count > 0)
                        {
                            ScreenShotsRepeated.DataSource = dsPortfolio.Tables[1];
                            ScreenShotsRepeated.DataBind();
                        }

                        SpecialImageLink.Visible = !string.IsNullOrEmpty(dr["SpecialThumbUrl"].ToString());
                        SpecialImageLink.ImageUrl = dr["SpecialThumbUrl"].ToString();
                        SpecialImageLink.NavigateUrl = dr["SpecialUrl"].ToString();
                        SpecialImageLink.Target = "_blank";

                        //OverviewPanel.Visible = !string.IsNullOrEmpty(dr["Text"].ToString());
                        PartnerPanel.Visible = !string.IsNullOrEmpty(dr["Partners"].ToString());
                        TechnologiesPanel.Visible = !string.IsNullOrEmpty(dr["Technologies"].ToString());
                        TextPanel.Visible = !string.IsNullOrEmpty(dr["Text"].ToString());
                        //ScreenShotsPanel.Visible = SpecialImageLink.Visible | ScreenShotsRepeated.Items.Count > 0;
                    }
                }
            }
        }
    }
}
