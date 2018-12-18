using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProfessionalASPNet45_03CS
{
    public partial class Listing03_02 : System.Web.UI.Page
    {
        protected void Button1_Click(object sender, EventArgs e)
        {
            Literal1.Text = "Hello " + TextBox1.Text;
        }
    }
}