using System.Web;

public class ImgHandler : IHttpHandler
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
