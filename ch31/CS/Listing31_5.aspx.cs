using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

public partial class Listing31_5_Default : System.Web.UI.Page
{
    protected async void Page_Load(object sender, EventArgs e)
    {
        using (var client = new HttpClient())
        {
            var url = "http://" + Request.Url.Host + ":" + Request.Url.Port + Response.ApplyAppPathModifier("~/Common/Customers.ashx");
            var customersJson = await client.GetStringAsync(url);
            var customers = JsonConvert.DeserializeObject<IEnumerable<Customer>>(customersJson);
            results.DataSource = customers;
            results.DataBind();
        }
    }
}