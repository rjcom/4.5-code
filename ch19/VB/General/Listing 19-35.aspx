<%@ Page Language="VB" %>

<!-- Role must be established first -->

<script runat="server">
   Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       GridView1.DataSource = _
          Roles.FindUsersInRole("AdminPageRights", TextBox1.Text)
       GridView1.DataBind()
   End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Role Manager</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="TextBox1" Runat="server"></asp:TextBox>
        <asp:Button ID="Button1" Runat="server" Text="Button" 
         OnClick="Button1_Click" />
        <p><asp:GridView ID="GridView1" Runat="server">
        </asp:GridView></p>
    </form>
</body>
</html>
