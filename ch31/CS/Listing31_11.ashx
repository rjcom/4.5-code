<%@ WebHandler Language="C#" Class="Listing31_11" %>

using System;
using System.Web;
using System.Threading.Tasks;
using System.Net.Http;

public class Listing31_11 : HttpTaskAsyncHandler
{
    public async override Task ProcessRequestAsync(HttpContext context)
    {
        using (var client = new HttpClient())
        {
            var bingTask =  client.GetStringAsync("http://bing.com");            
            var microsoftTask =  client.GetStringAsync("http://microsoft.com");
            var twitterTask = client.GetStringAsync("http://twitter.com");
            
            await Task.WhenAll(bingTask,microsoftTask,twitterTask);
        }
    }   
}