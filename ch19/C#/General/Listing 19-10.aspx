<%@ Page Language="C#" %>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            Membership.CreateUser(TextBox1.Text, TextBox2.Text);
            Label1.Text = "Successfully created user " + TextBox1.Text;
        }
        catch (MembershipCreateUserException ex)
        {
            switch(ex.StatusCode)
            {
                case MembershipCreateStatus.DuplicateEmail:
                    Label1.Text = "You have supplied a duplicate email address.";
                    break;
                case MembershipCreateStatus.DuplicateUserName:
                    Label1.Text = "You have supplied a duplicate username.";
                    break;
                case MembershipCreateStatus.InvalidEmail:
                    Label1.Text = "You have not supplied a proper email address.";
                    break;
                default:
                    Label1.Text = "ERROR: " + ex.Message.ToString();
                    break;
            }                   
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Creating a User</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Create User</h1>
        <p>Username<br />
            <asp:TextBox ID="TextBox1" Runat="server"></asp:TextBox>
        </p>
        <p>Password<br />
            <asp:TextBox ID="TextBox2" Runat="server" 
             TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" Runat="server" Text="Create User" 
             OnClick="Button1_Click" />
        </p>
        <p>
            <asp:Label ID="Label1" Runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
