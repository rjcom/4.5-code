using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;

/// <summary>
/// Summary description for HelloSoapHeader
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1, EmitConformanceClaims = true)]
public class HelloSoapHeader : System.Web.Services.WebService {

    public HelloHeader myHeader;

    [WebMethod]
    [SoapHeader("myHeader")]
    public string HelloWorld()
    {
        // Code here...
        if (myHeader == null)
        {
            return "Hello World";
        }
        else
        {
            return "Hello " + myHeader.Username + ". " +
               "<br>Your password is: " + myHeader.Password;
        }
    }
}