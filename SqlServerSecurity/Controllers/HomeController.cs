using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web.Mvc;

namespace SqlServerSecurity.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var users = new List<IDictionary<string, object>>();
            return View(users);
        }
    }
}