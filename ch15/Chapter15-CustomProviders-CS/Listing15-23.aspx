<%@ Page Language="C#" %>
<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Roles.CreateRole(TextBox1.Text);
            Label1.Text = "Role successfully created.";
        }
        catch (Exception ex)
        {
            Label1.Text = ex.Message.ToString();
        }
    }
</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>>Main Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Role Name:<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Create Role"
            OnClick="Button1_Click" /><br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>