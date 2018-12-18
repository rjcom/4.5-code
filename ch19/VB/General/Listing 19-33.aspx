<%@ Page Language="VB" %>

<script runat="server">
   Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
      GridView1.DataSource = Roles.GetRolesForUser(TextBox1.Text)
      GridView1.DataBind()
   End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Role Manager</title>
</head>
<body>
    <form id="form1" runat="server">
        User:
        <asp:TextBox ID="TextBox1" runat="server" />
        <asp:Button ID="Button1" runat="server" Text="Get Roles of User"
            OnClick="Button1_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </form>
</body>
</html>