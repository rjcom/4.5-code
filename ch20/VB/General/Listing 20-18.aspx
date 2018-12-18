<%@ Page Language="VB" %>
<%@ Import Namespace="System.Security.Principal" %>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

       Dim AuthUser As WindowsIdentity = WindowsIdentity.GetCurrent()
       Response.Write(AuthUser.AuthenticationType.ToString() & "<br>" & 
          AuthUser.ImpersonationLevel.ToString() & "<br>" & 
          AuthUser.IsAnonymous.ToString() & "<br>" & 
          AuthUser.IsAuthenticated.ToString() & "<br>" & 
          AuthUser.IsGuest.ToString() & "<br>" & 
          AuthUser.IsSystem.ToString() & "<br>" & 
          AuthUser.Name.ToString())
    End Sub
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
