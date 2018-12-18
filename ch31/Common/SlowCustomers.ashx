<%@ WebHandler Language="C#" Class="SlowCustomers" %>

using System;
using System.Web;
using System.Threading.Tasks;
using System.Threading;
using Newtonsoft.Json;

public class SlowCustomers : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        context.Response.ContentType = "application/json";
        Thread.Sleep(3000);

        context.Response.Write(JsonConvert.SerializeObject(new[] {
               new Customer { Id = 1, FirstName = "Maria", LastName = "Anders" },
               new Customer { Id = 2, FirstName = "Maria", LastName = "Anders" },
               new Customer { Id = 3, FirstName = "Maria", LastName = "Anders" }
            }));
    }

    public bool IsReusable
    {
        get { return false; }
    }

}