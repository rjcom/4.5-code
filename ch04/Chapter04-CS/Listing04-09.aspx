<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        string myScript = @"function AlertHello() { alert('Hello ASP.NET'); }";
        Page.ClientScript.RegisterClientScriptBlock(this.GetType(),
          "MyScript", myScript, true);
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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