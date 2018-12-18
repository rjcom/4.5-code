<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(Object sender, EventArgs e)
    {
        NameValueCollection nv = new NameValueCollection();
        nv = ConfigurationManager.GetSection("MyCompanyAppSettingsNVExample") as NameValueCollection;
        Response.Write(nv["Key1"] + "<br />");
        Response.Write(nv["Key2"]);
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
