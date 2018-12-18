using System;
using System.Linq;

namespace AspnetEntityFx
{
    public partial class ManyToMany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AdventureWorks2012_DataEntities1 adventureWorks2012_DataEntities =
                new AdventureWorks2012_DataEntities1();
            
            var query = from o in adventureWorks2012_DataEntities.SalesOrderHeaders
                        where o.SalesOrderDetails.Any(Quantity => Quantity.OrderQty > 5)
                        select new { o.PurchaseOrderNumber, o.Customer.CustomerID, o.SalesPersonID };
            
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
        }
    }
}