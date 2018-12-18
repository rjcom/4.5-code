<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(Object sender, EventArgs e)
    {
    MyCompanySettings cs = ConfigurationManager.GetSection("MyCompanySettings") as
        MyCompanySettings;
    Response.Write(cs.Key1 + "<br />");
    Response.Write(cs.Key2);
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
