using System;
using System.Globalization;

namespace Chapter32CS
{
    public partial class Numbers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            double myNumber = 5123456.00;
            System.Threading.Thread.CurrentThread.CurrentCulture = new CultureInfo("en-US");
            Response.Write("<b><u>en-US</u></b><br>");
            Response.Write(myNumber.ToString("n") + "<br>");

            System.Threading.Thread.CurrentThread.CurrentCulture = new CultureInfo("vi-VN");
            Response.Write("<b><u>vi-VN</u></b><br>");
            Response.Write(myNumber.ToString("n") + "<br>");

            System.Threading.Thread.CurrentThread.CurrentCulture = new CultureInfo("fi-FI");
            Response.Write("<b><u>fi-FI</u></b><br>");
            Response.Write(myNumber.ToString("n") + "<br>");

            System.Threading.Thread.CurrentThread.CurrentCulture = new CultureInfo("de-CH");
            Response.Write("<b><u>de-CH</u></b><br>");
            Response.Write(myNumber.ToString("n"));
        }
    }
}