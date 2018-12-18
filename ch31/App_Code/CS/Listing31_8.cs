using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using System.Web;

public class Listing31_8 : IHttpModule
{
    public void Init(HttpApplication context)
    {
        EventHandlerTaskAsyncHelper helper =
           new EventHandlerTaskAsyncHelper(DownloadWeb);
        
        context.AddOnBeginRequestAsync(
                helper.BeginEventHandler, helper.EndEventHandler);
    }
    public async Task DownloadWeb(object caller, EventArgs e)
    {
        using (var client = new HttpClient())
        {
            var result = await client.GetStringAsync("http://bing.com");            
        }
    }

    public void Dispose()
    {

    }
}