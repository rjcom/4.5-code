using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CS
{
    /// <summary>
    /// Summary description for imghandler
    /// </summary>
    public class imghandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //Logic to retrieve the image file
            context.Response.ContentType = "image/jpeg";
            context.Response.WriteFile("Garden.jpg");
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