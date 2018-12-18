using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.None)]
//[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class WebService : System.Web.Services.WebService {
    [WebMethod(MessageName = "HelloWorld")]
    public string HelloWorld() {
        return "Hello World";
    }
    [WebMethod(MessageName = "HelloWorldWithFirstName")]
    public string HelloWorld(string FirstName)
    {
        return "Hello " + FirstName;
    }
}