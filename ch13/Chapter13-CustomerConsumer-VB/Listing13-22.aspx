<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ws As New HelloWorldAsync.HelloWorldAsyncService()
        Dim myIar As IAsyncResult
        myIar = ws.BeginHelloWorld(Nothing, Nothing)
        Dim x As Integer = 0
          
        Do Until myIar.IsCompleted = True
            x += 1
        Loop
          
        Label1.Text = "Result from Web service: " & ws.EndHelloWorld(myIar) &
           "<br>Local count while waiting: " & x.ToString()
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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