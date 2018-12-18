using System;
using System.Web.UI;

namespace WebFormsMobileCS
{
    public partial class _Default : Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            if (Request.Browser.IsMobileDevice)
                MasterPageFile = "~/MobileSite.Master";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}