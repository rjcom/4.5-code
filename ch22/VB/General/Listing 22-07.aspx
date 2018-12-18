<%@ Page Language="VB" %>
<%@ Import Namespace="System.Runtime.Caching" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object,
      ByVal e As EventArgs)

        Dim cache As ObjectCache = MemoryCache.Default

        Dim usernameFromXml As String =
          TryCast(cache("userFromXml"), String)

        If usernameFromXml Is Nothing Then
            Dim userFilePath As New List(Of String)()
            userFilePath.Add(Server.MapPath("~/App_Data/Username.xml"))

            Dim policy As New CacheItemPolicy()
            policy.ChangeMonitors.Add(New HostFileChangeMonitor(userFilePath))

            Dim xdoc As XDocument =
              XDocument.Load(Server.MapPath("~/App_Data/Username.xml"))
            Dim query = From u In xdoc.Elements("usernames")
                Select u.Value

            usernameFromXml = query.First().ToString()

            cache.Set("userFromXml", usernameFromXml, policy)
        End If

        Label1.Text = usernameFromXml
    End Sub
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
