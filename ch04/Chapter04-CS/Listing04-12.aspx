<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        string myScript = "myJavaScriptCode.js";
        Page.ClientScript.RegisterClientScriptInclude("myKey", myScript);
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Adding JavaScript</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:Button ID="Button1" Runat="server" Text="Button" OnClientClick="AlertHello()" />   
    </div>
    </form>
</body>
</html>