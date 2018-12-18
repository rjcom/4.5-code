<%@ WebService Language="C#" Class="Listing_25_18" %>

using System;
using System.Web;
using System.Web.Services;
using System.Web.Services.Protocols;
using System.Collections.Generic;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[System.Web.Script.Services.ScriptService]
public class Listing_25_18  : System.Web.Services.WebService {

    [WebMethod]
    public List<Link> getLinks() {
        var links = new List<Link>() {
            new Link() { Url="http://jquery.com/", Text="jQuery"},
            new Link() { Url="http://jqueryui.com/", Text="jQuery UI"},
            new Link() { Url="http://juiceui.com/", Text="Juice UI"}
        };
        return links;
    }
    
}

public class Link
{
    public string Url { get; set; }
    public string Text { get; set; }
}