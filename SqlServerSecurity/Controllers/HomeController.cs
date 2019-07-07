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
            using (var connection = new SqlConnection(ConfigurationManager.ConnectionStrings["CodesanookMeetup"].ConnectionString))
            {
                var command = connection.CreateCommand();
                command.CommandText = "SELECT * FROM Users";
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    var users = new List<IDictionary<string, object>>();
                    while (reader.Read())
                    {
                        var row = Enumerable.Range(0, reader.FieldCount)
                            .Select(index => new
                            {
                                Name = reader.GetName(index),
                                Value = reader[index]
                            }).ToDictionary(f => f.Name, f => f.Value);
                        users.Add(row);
                    }
                    return View(users);
                }
            }
        }
    }
}