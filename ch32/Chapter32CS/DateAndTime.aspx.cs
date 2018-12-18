using System;
using System.Globalization;

namespace Chapter32CS
{
    public partial class DateAndTime : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime dt = new DateTime(2013, 8, 11, 11, 12, 10, 10);
            System.Threading.Thread.CurrentThread.CurrentCulture = new CultureInfo("en-US");
            Response.Write("<b><u>en-US</u></b><br>");
            Response.Write(dt.ToString() + "<br>");

            System.Threading.Thread.CurrentThread.CurrentCulture = new CultureInfo("ru-RU");
            Response.Write("<b><u>ru-RU</u></b><br>");
            Response.Write(dt.ToString() + "<br>");

            System.Threading.Thread.CurrentThread.CurrentCulture = new CultureInfo("fi-FI");
            Response.Write("<b><u>fi-FI</u></b><br>");
            Response.Write(dt.ToString() + "<br>");

            System.Threading.Thread.CurrentThread.CurrentCulture = new CultureInfo("th-TH");
            Response.Write("<b><u>th-TH</u></b><br>");
            Response.Write(dt.ToString());
        }
    }
}