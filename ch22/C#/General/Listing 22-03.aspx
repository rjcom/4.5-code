<%@ Page Language="C#" %>
<%@ OutputCache Duration="30" VaryByParam="None" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
        Response.Cache.SetExpires(DateTime.MinValue);

        Response.Write(DateTime.Now.ToLongTimeString());
    }
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
