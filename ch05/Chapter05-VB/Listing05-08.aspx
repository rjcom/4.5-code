<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, _
      ByVal e As System.EventArgs)
        Response.Write("Postback!")
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Button Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Button"
            OnClientClick="AlertHello()" OnClick="Button1_Click" />
    </form>
    <script type="text/javascript">
        function AlertHello() {
            alert('Hello ASP.NET');
        }
    </script>
</body>
</html>