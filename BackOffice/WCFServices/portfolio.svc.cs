using System;
using System.Data;
using System.Linq;
using web.micajah.backoffice.AppCode;
using System.Collections;

namespace web.micajah.backoffice.WCFServices
{
    // NOTE: If you change the class name "portfolio" here, you must also update the reference to "portfolio" in Web.config.
    public class portfolio : Iportfolio
    {
        private DataTable GetDataTable(System.Collections.IEnumerable vv)
        {
            DataTable t = null;
            foreach (var v in vv)
            {
                Type bpsType = v.GetType();

                if (t == null)
                {
                    t = new DataTable();
                    foreach (System.Reflection.PropertyInfo pi in bpsType.GetProperties())
                    {
                        t.Columns.Add(pi.Name, pi.PropertyType);
                    }
                }

                DataRow r = t.NewRow();
                foreach (DataColumn c in t.Columns)
                {
                    object o = bpsType.GetProperty(c.ColumnName).GetValue(v, null);
                    r[c] = o;
                }
                t.Rows.Add(r);
            }
            if (t != null)
            {
                t.Columns.Add("LogoUrl", typeof(string));
                t.Columns.Add("SpecialUrl", typeof(string));
                t.Columns.Add("SpecialThumbUrl", typeof(string));
                foreach (DataRow r in t.Rows)
                {
                    if (!string.IsNullOrEmpty((string)GetLogoGuid((Guid)r["AccountGuid"])))
                        r["LogoUrl"] = Micajah.FileService.Client.Access.GetFileUrl((string)GetLogoGuid((Guid)r["AccountGuid"]));
                    else
                        r["LogoUrl"] = "";
                    if (!string.IsNullOrEmpty((string)GetSpecialGuid((Guid)r["PortfolioGuid"])))
                    {
                        r["SpecialUrl"] = Micajah.FileService.Client.Access.GetFileUrl((string)GetSpecialGuid((Guid)r["PortfolioGuid"]));
                        r["SpecialThumbUrl"] = Micajah.FileService.Client.Access.GetThumbnailUrl((string)GetSpecialGuid((Guid)r["PortfolioGuid"]), 600, 450);
                        
                    }
                    else
                    {
                        r["SpecialUrl"] = "";
                        r["SpecialThumbUrl"] = "";
                    }
                }
            }

            return t;
        }

        public DataSet GetPortfolioDetail(Guid PortfolioGuid)
        {
            BackOfficeDataContext db = new BackOfficeDataContext();
            var prt = (from p in db.BackOffice_Portfolios join a in db.BackOffice_Accounts on p.AccountGuid equals a.AccountGuid where p.PortfolioGuid == PortfolioGuid select new { p.AccountGuid, p.PortfolioGuid, p.PortfolioName, p.Active, p.Overview, p.Partners, p.Technologies, p.Text, a.AccountName });
            DataTable t = GetDataTable(prt);
            DataSet ds = new DataSet();
            ds.Tables.Add(t);
            ds.Tables.Add(GetPortfolioScreenshots(PortfolioGuid));
            return ds;
        }

        public System.Data.DataSet GetPortfolioList()
        {
            BackOfficeDataContext db = new BackOfficeDataContext();
            var bp = (from a in db.BackOffice_Accounts join p in db.BackOffice_Portfolios on a.AccountGuid equals p.AccountGuid where p.Active orderby p.PortfolioOrder ascending, p.PortfolioName ascending select new { a.AccountGuid, a.AccountName, a.URL, p.PortfolioGuid, p.PortfolioName, p.Active, p.Overview, p.Partners, p.Technologies, p.Text });
            DataTable t = GetDataTable(bp);
            DataSet ds = new DataSet();
            ds.Tables.Add(t);
            return ds;
        }

        public DataTable GetPortfolioScreenshots(Guid PortfolioGuid)
        {
            DataTable screenshots = new DataTable();
            screenshots.Columns.Add("Original", typeof(string));
            screenshots.Columns.Add("Thumb", typeof(string));
            DataRow dr;

            Micajah.FileService.Client.Dal.MetaDataSetTableAdapters.FileTableAdapter fta = new Micajah.FileService.Client.Dal.MetaDataSetTableAdapters.FileTableAdapter();
            Micajah.FileService.Client.Dal.MetaDataSet.FileDataTable files = fta.GetFiles(web.micajah.backoffice.Global.OrganizationGuid, web.micajah.backoffice.Global.DepartmentGuid, PortfolioGuid.ToString(), "Portfolio", false);

            if (files != null && files.Rows.Count > 0)
                foreach (Micajah.FileService.Client.Dal.MetaDataSet.FileRow file in files.Rows)
                {
                    dr = screenshots.NewRow();
                    dr["Original"] = Micajah.FileService.Client.Access.GetFileUrl(file.FileUniqueId);
                    dr["Thumb"] = Micajah.FileService.Client.Access.GetThumbnailUrl(file.FileUniqueId, 600, 450);
                    screenshots.Rows.Add(dr);
                }

            return screenshots;
        }

        protected string GetLogoGuid(Guid AccountGuid)
        {
            Micajah.FileService.Client.Dal.MetaDataSetTableAdapters.FileTableAdapter fta = new Micajah.FileService.Client.Dal.MetaDataSetTableAdapters.FileTableAdapter();
            Micajah.FileService.Client.Dal.MetaDataSet.FileRow fr = fta.GetFile(web.micajah.backoffice.Global.OrganizationGuid, web.micajah.backoffice.Global.DepartmentGuid, AccountGuid.ToString(), "Account");
            if (fr == null) return string.Empty;
            return fr.FileUniqueId;
        }

        protected string GetSpecialGuid(Guid PortfolioGuid)
        {
            Micajah.FileService.Client.Dal.MetaDataSetTableAdapters.FileTableAdapter fta = new Micajah.FileService.Client.Dal.MetaDataSetTableAdapters.FileTableAdapter();
            Micajah.FileService.Client.Dal.MetaDataSet.FileRow fr = fta.GetFile(web.micajah.backoffice.Global.OrganizationGuid, web.micajah.backoffice.Global.DepartmentGuid, PortfolioGuid.ToString(), "Special");
            if (fr == null) return string.Empty;
            return fr.FileUniqueId;
        }
    }
}
