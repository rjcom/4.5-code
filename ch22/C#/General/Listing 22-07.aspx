<%@ Page Language="C#" %>
<%@ Import Namespace="System.Runtime.Caching" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        ObjectCache cache = MemoryCache.Default;

        string usernameFromXml = cache["userFromXml"] as string;

        if (usernameFromXml == null)
        {
            List<string> userFilePath = new List<string>();
            userFilePath.Add(Server.MapPath("~/App_Data/Username.xml"));

            CacheItemPolicy policy = new CacheItemPolicy();
            policy.ChangeMonitors.Add(new HostFileChangeMonitor(userFilePath));

            XDocument xdoc = XDocument.Load(Server.MapPath("~/App_Data/Username.xml"));
            var query = from u in xdoc.Elements("usernames")
                        select u.Value;

            usernameFromXml = query.First().ToString();

            cache.Set("userFromXml", usernameFromXml, policy);
        }

        Label1.Text = usernameFromXml;
    }

</script>

<html>
<head runat="server">
    <title>Using System.Runtime.Caching</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
