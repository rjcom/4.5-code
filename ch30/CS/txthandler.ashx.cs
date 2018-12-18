using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CS
{
    /// <summary>
    /// Summary description for txthandler
    /// </summary>
    public class txthandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/plain";
            context.Response.Write("Hello World");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}