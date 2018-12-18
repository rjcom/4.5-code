<%@ Page Language="C#" %>
<%@ Import Namespace="System.Security.Principal" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
       WindowsIdentity AuthUser = WindowsIdentity.GetCurrent();
       Response.Write(AuthUser.AuthenticationType.ToString() + "<br>" +
          AuthUser.ImpersonationLevel.ToString() + "<br>" +
          AuthUser.IsAnonymous.ToString() + "<br>" +
          AuthUser.IsAuthenticated.ToString() + "<br>" +
          AuthUser.IsGuest.ToString() + "<br>" +
          AuthUser.IsSystem.ToString() + "<br>" +
          AuthUser.Name.ToString());
    }
</script>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
