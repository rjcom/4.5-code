using System;
using System.Globalization;

namespace Chapter32CS
{
    public partial class ChangeCulture : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Threading.Thread.CurrentThread.CurrentCulture = new CultureInfo("th-TH");
            CultureInfo ci = System.Threading.Thread.CurrentThread.CurrentCulture;
            Response.Write("<b><u>CURRENT CULTURE'S INFO</u></b>");
            Response.Write("<p><b>Culture's Name:</b> " + ci.Name.ToString() + "<br>");
            Response.Write("<b>Culture's Parent Name:</b> " + ci.Parent.Name.ToString() +
               "<br>");
            Response.Write("<b>Culture's Display Name:</b> " + ci.DisplayName.ToString() +
               "<br>");
            Response.Write("<b>Culture's English Name:</b> " + ci.EnglishName.ToString() +
               "<br>");
            Response.Write("<b>Culture's Native Name:</b> " + ci.NativeName.ToString() +
               "<br>");
            Response.Write("<b>Culture's Three Letter ISO Name:</b> " +
               ci.Parent.ThreeLetterISOLanguageName.ToString() + "<br>");
            Response.Write("<b>Calendar Type:</b> " + ci.Calendar.ToString() + "</p>");
        }
    }
}