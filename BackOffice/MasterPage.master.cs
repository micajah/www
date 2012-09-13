using System;
using Micajah.FileService.WebControls;

public partial class MasterPage : Micajah.Common.Pages.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UploadControlSettings.OrganizationName = web.micajah.backoffice.Global.OrganizationName;
        UploadControlSettings.OrganizationId = web.micajah.backoffice.Global.OrganizationGuid;
        UploadControlSettings.DepartmentName = web.micajah.backoffice.Global.DepartmentName;
        UploadControlSettings.DepartmentId = web.micajah.backoffice.Global.DepartmentGuid;
    }
}
