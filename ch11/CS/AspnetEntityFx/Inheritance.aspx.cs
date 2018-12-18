using System;
using System.Linq;

namespace AspnetEntityFx
{
    public partial class Inheritance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AdventureWorks2012_DataEntities2 adventureWorks2012_DataEntities =
                new AdventureWorks2012_DataEntities2();
            
            var query = from v in adventureWorks2012_DataEntities.Vendors.OfType<InactiveVendor>()
                        select v;
            
            GridView1.DataSource = query.ToList();
            GridView1.DataBind(); 
        }
    }
}