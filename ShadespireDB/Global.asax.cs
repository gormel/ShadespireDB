using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using ShadespireDB.App_Start;

namespace ShadespireDB
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            MapHttpRoute.Map(RouteTable.Routes);
        }
    }
}