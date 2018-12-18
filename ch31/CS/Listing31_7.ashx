<%@ WebHandler Language="C#" Class="Listing31_7" %>

using System;
using System.Web;
using System.Threading.Tasks;
using System.Net.Http;

public class Listing31_7 : HttpTaskAsyncHandler
{
    public async override Task ProcessRequestAsync(HttpContext context)
    {
        using (var client = new HttpClient())
        {
            var bingTask = await client.GetStringAsync("http://bing.com");
            context.Response.Write(bingTask);
        }
    }   
}