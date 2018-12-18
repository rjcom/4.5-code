<%@ Page Language="VB" %>
<%@ Import Namespace="Microsoft.AspNet.Membership.OpenAuth"  %>

<script runat="server">
    Protected Sub Page_Load()
        Dim result = OpenAuth.VerifyAuthentication("~/Listing%2019-41.aspx")
        If result.IsSuccessful Then
            Label1.Text = HttpUtility.HtmlEncode(result.UserName)
        Else
            FormsAuthentication.RedirectToLoginPage()
        End If
    End Sub
</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Welcome, <asp:Label ID="Label1" runat="server" />
    </div>
    </form>
</body>
</html>
