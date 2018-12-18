<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(Object sender, EventArgs e)
    {
        NameValueCollection nvc = new NameValueCollection();
        nvc = ConfigurationManager.GetSection("MyCompanyAppSettings") as NameValueCollection;
        Response.Write(nvc["Key1"] + "<br />");
        Response.Write(nvc["Key2"]);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
