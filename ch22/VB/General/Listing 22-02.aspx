<%@ Page Language="VB" %>
<%@ OutputCache Duration="30" VaryByParam="None" %>

<!DOCTYPE html>

<script runat="server">
    Public Shared Function GetUpdatedTime(ByVal context As HttpContext) As String
        Return DateTime.Now.ToLongTimeString() + " by " + 
                context.User.Identity.Name
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) _
            Handles Me.Load
        Label1.Text = DateTime.Now.ToLongTimeString()
    End Sub
</script>

<html>
<head>
    <title>Substitution Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" Runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Substitution ID="Substitution1" runat="server"
             MethodName="GetUpdatedTime" />
        <br />
    </div>
    </form>
</body>
</html>
