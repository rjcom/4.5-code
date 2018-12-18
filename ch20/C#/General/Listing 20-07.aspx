<%@ Page Language="C#"%>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FormsAuthentication.Authenticate(tbUsername.Text, tbPassword.Text)) {
            FormsAuthentication.RedirectFromLoginPage(tbUsername.Text, true);
        }
        else {
            Response.Write("Invalid credentials"); 
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Login Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Username<br />
        <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox><br />
        <br />
        Password<br />
        <asp:TextBox ID="tbPassword" runat="server" 
         TextMode="Password"></asp:TextBox><br />
        <br />
        <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" 
         Text="Submit" />
    </div>
    </form>
</body>
</html>
