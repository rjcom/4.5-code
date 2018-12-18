using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CS_Listing31_10 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        RegisterAsyncTask(new PageAsyncTask(GetCustomersAsync));
    }
    private async Task GetCustomersAsync(CancellationToken cancelToken)
    {
        using (var client = new HttpClient())
        {
            var url = "http://" + Request.Url.Host + ":" + Request.Url.Port + Response.ApplyAppPathModifier("~/Common/SlowCustomers.ashx");
            var response = await client.GetAsync(url, cancelToken);
            var customersJson = await response.Content.ReadAsStringAsync();           
            var customers = JsonConvert.DeserializeObject<IEnumerable<Customer>>(customersJson);
            results.DataSource = customers;
            results.DataBind();
        }
    }
    private void Page_Error(object sender, EventArgs e)
    {
        Exception exc = Server.GetLastError();
        if (exc is TimeoutException)
        {
            throw exc;
        }
    }
}