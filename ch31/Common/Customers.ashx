<%@ WebHandler Language="C#" Class="Customers" %>

using System;
using System.Web;
using Newtonsoft.Json;

    public class Customers : IHttpHandler
    {
        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "application/json";
            

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
