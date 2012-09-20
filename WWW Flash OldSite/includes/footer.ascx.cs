namespace Micajah.WWW.includes
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Summary description for footer.
	/// </summary>
	public class footer : System.Web.UI.UserControl
	{
		protected System.Web.UI.WebControls.Literal ltFooter;

		private void Page_Load(object sender, System.EventArgs e)
		{
			ltFooter.Text = "&copy 1997-" + System.DateTime.Now.Year.ToString() + " Micajah IT Services, Inc. All rights reserved."; 
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			this.Load += new System.EventHandler(this.Page_Load);
		}
		#endregion
	}
}
