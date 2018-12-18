<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(Object sender, EventArgs e)
    {
        Response.Write("Postback!");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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