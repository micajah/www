namespace Micajah.WWW
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Summary description for header.
	/// </summary>
	public class header : System.Web.UI.UserControl
	{
		protected System.Web.UI.WebControls.Literal ltHeader;
		private string title;
		private string breadCrumbs;
		private string[] arrBreadCrumbs; 

		public string Title 
		{
			set { title = value; }
		}

		public string BreadCrumbs
		{
			set { breadCrumbs = value; }
		}

		private string CreateBreadCrumbs(string RawInputString)
		{
			string Temp = "";
				
			if (RawInputString!=null)
			{
				char[] splitter  = {';'};
				arrBreadCrumbs = breadCrumbs.Split(splitter);

				for (int x=0; x<arrBreadCrumbs.GetUpperBound(0); x=x+2)
				{
					Temp += " \\ <a class=text2 href='" + AppPath.GetPath(arrBreadCrumbs[x]) + "'>" + arrBreadCrumbs[x+1] + "</a>";
				}
			}
			else
			{
				Temp = "";
			}
			
			return Temp;
		}

		private void Page_Load(object sender, System.EventArgs e)
		{
			string Temp = "";
			
			Temp+="<!DOCTYPE HTML PUBLIC '-//W3C//DTD HTML 4.0 Transitional//EN' >";
			Temp+="<HTML><HEAD><title>Micajah IT Services - " + title + "</title>";
			Temp+="<meta name='GENERATOR' Content='Microsoft Visual Studio .NET 7.1'><meta name='CODE_LANGUAGE' Content='C#'><meta name='vs_defaultClientScript' content='JavaScript'><meta name='vs_targetSchema' content='http://schemas.microsoft.com/intellisense/ie5'>";
			Temp+="<META NAME='keywords' CONTENT='atlanta software development, web software, web based applications, custom development,atlanta, microsoft asp development, microsoft .net development'><META NAME='description' CONTENT='Micajah is a custom web based application development firm based in Atlanta GA providing solutions to Coke, Sony, and Georgia Pacific.'>";

			Temp+="<LINK rel='stylesheet' type='text/css' href='" + AppPath.GetPath("/global.css") + "'>";
			Temp+="</HEAD>";
			Temp+="<body MS_POSITIONING='GridLayout'>";

			//Header Table
			Temp+="<table border=0 height='100%'><tr><td><table border=0 cellspacing=5><tr><td><a href='" + AppPath.GetPath("/home.aspx") + "'><img border=0 height='117' src='" + AppPath.GetPath("/images/micajah5.jpg") + "' WIDTH='549'></a></td></tr>";
			Temp+="<tr><td class=text2>&nbsp;&nbsp;&nbsp;&nbsp;<a href='" + AppPath.GetPath("/home.aspx") + "'>home</a> &nbsp;&nbsp;<a href='" + AppPath.GetPath("/custdev.htm") + "'>custom development</a>";
			Temp+="&nbsp;&nbsp;<a href='" + AppPath.GetPath("/leasedapps/default.aspx") + "'>leased applications</a>&nbsp;&nbsp;<a href='" + AppPath.GetPath("/clienttools/default.aspx") + "'>client tools<a>&nbsp;&nbsp;";
			Temp+="<a href='" + AppPath.GetPath("/talent/default.aspx") + "'>talent<a>&nbsp;&nbsp;<a href='" + AppPath.GetPath("/contact.aspx") + "'>contact</a></td>&nbsp;&nbsp;</tr>";
			
			//Bread Crumbs
			if(breadCrumbs!=null){
				Temp+="<tr><td><span class=text2>&nbsp;&nbsp;&nbsp;&nbsp;back to: " + CreateBreadCrumbs(breadCrumbs) + "</span></td></tr>";
			}

			Temp+="</table>";

			Temp+="<br><span class='text3'>&nbsp;&nbsp;&nbsp;&nbsp;"+title+"<span><br><br>";
			Temp+="<table border=0 width='600px'><tr><td width='25px'>&nbsp;</td><td>";

			ltHeader.Text=Temp;

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
