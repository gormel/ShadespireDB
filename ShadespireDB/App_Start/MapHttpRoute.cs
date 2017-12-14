using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Routing;

namespace ShadespireDB.App_Start
{
    public static class MapHttpRoute
    {
        public static void Map(RouteCollection collection)
        {
            collection.MapPageRoute("Index", "", "~/Views/Index.aspx");
        }
    }
}