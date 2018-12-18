<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, System.EventArgs e)
    {
        helloSoapHeader.HelloSoapHeader ws = new helloSoapHeader.HelloSoapHeader();
        helloSoapHeader.HelloHeader wsHeader = new helloSoapHeader.HelloHeader();
        wsHeader.Username = "Jason Gaylord";
        wsHeader.Password = "Lights";
        ws.HelloHeaderValue = wsHeader;
        ws.SoapVersion = System.Web.Services.Protocols.SoapProtocolVersion.Soap12;
        Label1.Text = ws.HelloWorld();
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Working with SOAP headers</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" Runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>