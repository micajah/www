using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Collections;

namespace web.micajah.backoffice.WCFServices
{
    // NOTE: If you change the interface name "Iportfolio" here, you must also update the reference to "Iportfolio" in Web.config.
    [ServiceContract]
    public interface Iportfolio
    {
        [OperationContract]
        System.Data.DataSet GetPortfolioDetail(Guid PortfolioGuid);
        [OperationContract]
        System.Data.DataSet GetPortfolioList();
        [OperationContract]
        System.Data.DataTable GetPortfolioScreenshots(Guid PortfolioGuid);
    }
}
