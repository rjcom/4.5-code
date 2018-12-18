using System;
using System.Web;

public partial class Listing_16_04 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "Hello " + HttpUtility.HtmlEncode(TextBox1.Text) + "!";
    }
}
