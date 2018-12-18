using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Threading.Tasks;
using System.Web;


public class Listing31_3
{
	public Listing31_3()
	{
		
	}
    public async Task<int> RSSFeedLengthAsync(IList<Uri> uris)
    {
        int total = 0;
        foreach (var uri in uris)
        {            
            var data = await new WebClient().DownloadDataTaskAsync(uri);
            total += data.Length;
        }
        
        return total;
    }


}