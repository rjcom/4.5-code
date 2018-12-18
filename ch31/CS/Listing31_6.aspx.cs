using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CS_Listin31_6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterAsyncTask(new PageAsyncTask(GetCustomersAsync));
    }
    private async Task GetCustomersAsync()
    {
        using (var client = new HttpClient())
        {   
            var url = "http://"+Request.Url.Host +":"+ Request.Url.Port + Response.ApplyAppPathModifier("~/Common/Customers.ashx");
            var customersJson = await client.GetStringAsync(url);
            var customers = JsonConvert.DeserializeObject<IEnumerable<Customer>>(customersJson);
            results.DataSource = customers;
            results.DataBind();
        }
    }
}