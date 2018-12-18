using System;
using System.Web;
using System.Threading;
using System.Web.Caching;
using System.Xml;

public class RssCacheDependency : CacheDependency
{
    Timer backgroundThread;
    int howOften = 900;
    XmlDocument RSS;
    string RSSUrl;

    public RssCacheDependency(string URL, int polling)
    {
        howOften = polling;
        RSSUrl = URL;
        RSS = RetrieveRSS(RSSUrl);

        if (backgroundThread == null)
        {
            backgroundThread = new Timer(
                   new TimerCallback(CheckDependencyCallback),
                   this, (howOften * 1000), (howOften * 1000));
        }
    }

    public XmlDocument RetrieveRSS(string URL)
    {
        XmlDocument retVal = new XmlDocument();
        retVal.Load(URL);
        return retVal;
    }

    public void CheckDependencyCallback(object sender)
    {
        RssCacheDependency CacheDepends = sender as RssCacheDependency;
        XmlDocument NewRSS = RetrieveRSS(RSSUrl);
        if (NewRSS.OuterXml != RSS.OuterXml)
        {
            CacheDepends.NotifyDependencyChanged(CacheDepends, EventArgs.Empty);
        }
    }

    override protected void DependencyDispose()
    {
        backgroundThread = null;
        base.DependencyDispose();
    }

    public XmlDocument Document
    {
        get
        {
            return RSS;
        }
    }
}
