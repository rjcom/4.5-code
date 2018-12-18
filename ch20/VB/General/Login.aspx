<%@ Page Language="VB" %>

<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If (tbUsername.Text = "Christian" And tbPassword.Text = "Bubbles") Then
            FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, True)
        Else
            Response.Write("Invalid credentials")
        End If
    End Sub
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
