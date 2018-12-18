<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim myScript As String = "function AlertHello() { alert('Hello ASP.NET'); }"
        Page.ClientScript.RegisterClientScriptBlock(Me.GetType(), "MyScript",
          myScript, True)
    End Sub
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