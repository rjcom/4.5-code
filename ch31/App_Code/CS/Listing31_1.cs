using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;

/// <summary>
/// Summary description for Listing01
/// </summary>
public class Listing31_1
{
    public Listing31_1()
    {

    }
    public int RSSFeedLength(IList<Uri> uris)
    {
        int total = 0;
        foreach (var uri in uris)
        {
            var data = new WebClient().DownloadData(uri);
            total += data.Length;
        }
        return total;
    }


}