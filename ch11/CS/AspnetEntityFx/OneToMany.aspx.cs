using System;
using System.Web.UI.WebControls;

namespace AspnetEntityFx
{
    public partial class OneToMany : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AdventureWorks2012_DataEntities adventureWorks2012_DataEntities =
                new AdventureWorks2012_DataEntities();
            foreach (var employee in adventureWorks2012_DataEntities.Employees)
            {
                ListItem li = new ListItem();
                li.Text = employee.BusinessEntityID + " ";
                foreach (var pay in employee.EmployeePayHistories)
                {
                    li.Text += "Pay Rate: " + pay.Rate + " ";
                }
                BulletedList1.Items.Add(li);
            }
        }
    }
}