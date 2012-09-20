using System;
using System.Web;

namespace Micajah.WWW
{
	/// <summary>
	/// Summary description for url.
	/// </summary>
	public class AppPath
	{
		static string appRoot;


		public static string GetPath (string relativePath) 
		{
			SetAppRoot();
			return appRoot + relativePath;
		}

		public static string AppRoot 
		{
			
			get { 
				SetAppRoot();
				return appRoot;}
		
		}

		private static void SetAppRoot()
		{
			appRoot=HttpContext.Current.Request.ApplicationPath;
			if (appRoot=="/")
			{
				appRoot="";
			}
		}
}
}
