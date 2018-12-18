using AWServiceReference;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        AdventureWorksEntities svc = new AdventureWorksEntities(new
            Uri("http://localhost:5526/AdventureWorksDataService.svc"));

        var query = svc.Customers.Where(w => w.CompanyName.Contains("Bike"));

        GridView1.DataSource = query;
        GridView1.DataBind();
    }
}