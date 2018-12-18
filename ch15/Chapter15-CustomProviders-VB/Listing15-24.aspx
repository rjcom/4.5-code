<%@ Page Language="vb" %>
<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, _
      ByVal e As System.EventArgs)
        
        Try
            Roles.AddUserToRole(TextBox1.Text, TextBox2.Text)
            Label1.Text = "User successfully added to role"
        Catch ex As Exception
            Label1.Text = ex.Message.ToString()
        End Try
    End Sub
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Add the following user:<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <br />
        To role:<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Add User to Role"
            OnClick="Button1_Click" /><br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>