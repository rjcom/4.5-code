<%@ Page Language="VB" %>

<script runat="server">
    Protected Sub Login1_Authenticate(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.AuthenticateEventArgs)

        If (Login1.UserName = "Christian" And Login1.Password = "Bubbles") Then
            FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet)
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
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
        </asp:Login>
    </div>
    </form>
</body>
</html>
