using System.Web.Mvc;

namespace MvcBasicCS.Controllers
{
    public class ProductsController : Controller
    {
        //public ActionResult Display()
        //{
        //    return View();
        //}

        public ActionResult Display(int? id)
        {
            return View();
        }
    }
}
