<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, System.EventArgs e)
    {
        helloWorldAsync.HelloWorldAsyncService ws = new helloWorldAsync.HelloWorldAsyncService();
        IAsyncResult myIar;
        myIar = ws.BeginHelloWorld(null, null);
        int x = 0;

        while (myIar.IsCompleted == false)
        {
            x += 1;
        }

        Label1.Text = "Result from Web service: " + ws.EndHelloWorld(myIar) +
           "<br>Local count while waiting: " + x.ToString();
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Async consumption</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" Runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>