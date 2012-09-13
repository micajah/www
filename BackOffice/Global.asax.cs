using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Xml.Linq;

using Micajah.FileService.Client;
using Micajah.FileService.WebControls;

namespace web.micajah.backoffice
{
    public class Global : Micajah.Common.Application.WebApplication
    {
        public static Guid OrganizationGuid
        {
            get { return new Guid("9af0e87410b34f9c8eb2e97b6ef826f4"); }
        }

        public static Guid DepartmentGuid
        {
            get { return new Guid("44bd3a267496432ca3d8c15addfde4ac"); }
        }

        public static string OrganizationName
        {
            get { return "Micajah IT Services"; }
        }

        public static string DepartmentName
        {
            get { return "Default Department"; }
        }

        protected override void Application_Start(object sender, EventArgs e)
        {
            base.Application_Start(sender, e);
            Micajah.FileService.Client.ResourceVirtualPathProvider.Register();
        }
        //protected override void Session_Start(object sender, EventArgs e)
        //{
        //    base.Session_Start(sender, e);
        //    UploadControlSettings.OrganizationName = OrganizationName;
        //    UploadControlSettings.OrganizationId = OrganizationGuid;
        //    UploadControlSettings.DepartmentName = DepartmentName;
        //    UploadControlSettings.DepartmentId = DepartmentGuid;            
        //}
    }
}