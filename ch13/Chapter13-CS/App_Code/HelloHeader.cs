using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class HelloHeader : System.Web.Services.Protocols.SoapHeader
{
    public string Username;
    public string Password;
}