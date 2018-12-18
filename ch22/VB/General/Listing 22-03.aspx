<%@ Page Language="VB" %>
<%@ OutputCache Duration="30" VaryByParam="None" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Response.Cache.SetCacheability(HttpCacheability.NoCache)
        Response.Cache.SetNoStore()
        Response.Cache.SetExpires(DateTime.MinValue)

        Response.Write(DateTime.Now.ToLongTimeString())
    End Sub
</script>

<html>
<head>
    <title>Caching</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       
    </div>
    </form>
</body>
</html>
