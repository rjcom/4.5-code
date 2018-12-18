<%@ Page Language="C#" %>
<%@ Register assembly="CSharpServerControl1" namespace="CSharpServerControl1" tagprefix="cc1" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Listing07341.DataBind();
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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