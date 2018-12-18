<%@ Page Language="C#" %>
<%@ Import Namespace="Microsoft.AspNet.Membership.OpenAuth"  %>

<script runat="server">
    void Page_Load()
    {
        var result = OpenAuth.VerifyAuthentication("~/Listing%2019-41.aspx");
        if (result.IsSuccessful)
        {
            Label1.Text = HttpUtility.HtmlEncode(result.UserName);
        }
        else
        {
            FormsAuthentication.RedirectToLoginPage();
        }
    }
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
