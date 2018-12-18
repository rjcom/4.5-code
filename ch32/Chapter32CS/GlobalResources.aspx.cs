using System;

namespace Chapter32CS
{
    public partial class GlobalResources : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label3.Text = Resources.Resource.PrivacyStatement;
        }
    }
}