using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;

/// <summary>
/// Summary description for Listing02
/// </summary>
public class Listing31_2
{
	public Listing31_2()
	{
		
	}
    public void RSSFeedLengthAsync(IList<Uri> uris)
    {
        RSSFeedLengthAsyncHelper(uris.GetEnumerator(), 0);
    }

    private void RSSFeedLengthAsyncHelper(IEnumerator<Uri> enumerator, int total)
    {
        if (enumerator.MoveNext())
        {
            var client = new WebClient();
            client.DownloadDataCompleted += (sender, e) =>
            {
                RSSFeedLengthAsyncHelper(enumerator, total + e.Result.Length);
            };
            client.DownloadDataAsync(enumerator.Current);
        }
        else
        {
            enumerator.Dispose();
        }
    }
    
}