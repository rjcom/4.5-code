<%@ Page Language="VB" %>

<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Label1.Text = DateTime.Now.ToString()
    End Sub
</script>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>My Normal ASP.NET Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Click to get machine time"
                OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
