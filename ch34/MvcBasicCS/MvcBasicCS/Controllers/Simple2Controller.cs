using System.Web;
using System.Web.Mvc;

namespace MvcBasicCS.Controllers
{
    public class Simple2Controller : Controller
    {
        public void Hello()
        {
            Response.Write("<h1>Hello World Again!</h1>");
        }

        public void Goodbye(string name)
        {
            Response.Write("Goodbye " + HttpUtility.HtmlEncode(name));
        }
    }
}
