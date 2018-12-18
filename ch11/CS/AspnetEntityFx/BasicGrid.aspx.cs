using System;
using System.Linq;

namespace AspnetEntityFx
{
    public partial class BasicGrid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AdventureWorks2012_DataEntities adventureWorks2012_DataEntities =
                new AdventureWorks2012_DataEntities();
            
            var query = from emp in adventureWorks2012_DataEntities.Employees
                    select emp;
            
            GridView1.DataSource = query.ToList();
            GridView1.DataBind();
        }
    }
}