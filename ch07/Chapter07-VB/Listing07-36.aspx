<%@ Page Language="VB" %>
<%@ Register assembly="VbServerControl1" namespace="VbServerControl1" tagprefix="cc1" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Me.Listing07341.DataBind()
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Templated Web Controls</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <cc1:Listing0734 ID="Listing07341" runat="server" Name="John Doe"
            Text="Hello World!">
            <MessageTemplate>The user '<%# Container.Name %>' has a 
                message for you: <br />"<%# Container.Text %>"
            </MessageTemplate>
        </cc1:Listing0734>
    </div>
    </form>
</body>
</html>