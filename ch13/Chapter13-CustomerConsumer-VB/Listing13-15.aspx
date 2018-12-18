<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ws As New HelloSoap.HelloSoapHeader()
        Dim wsHeader As New HelloSoap.HelloHeader()
        wsHeader.Username = "Jason Gaylord"
        wsHeader.Password = "Lights"
        ws.HelloHeaderValue = wsHeader
        Label1.Text = ws.HelloWorld()
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Working with SOAP headers</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" Runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>