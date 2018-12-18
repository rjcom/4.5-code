<%@ WebHandler Language="C#" Class="Listing_25_13" %>

using System;
using System.Web;
using System.Web.Script.Serialization;

public class Listing_25_13 : IHttpHandler {

    public void ProcessRequest(HttpContext context)
    {
        switch (context.Request.RequestType)
        {
            case "GET":
                if (context.Request["json"] == null ||
                    context.Request["json"] != "true")
                {
                    context.Response.ContentType = "text/plain";
                    context.Response.Write(DateTime.Now.ToLongTimeString());
                }
                else
                {
                    var json = new JavaScriptSerializer().Serialize(
                        DateTime.Now.ToLongTimeString());
                    context.Response.ContentType = "application/json";
                    context.Response.Write(json);
                }
                break;
            case "POST":
                context.Response.ContentType = "text/plain";
                context.Response.Write("POST at " + DateTime.Now.ToLongTimeString());
                break;
        }
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

}