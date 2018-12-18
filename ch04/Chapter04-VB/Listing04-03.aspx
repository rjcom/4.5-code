<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Button1_ServerClick(sender As Object, e As EventArgs)
        Response.Write("Hello " & Text1.Value)
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using HTML Server Controls</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        What is your name?<br />
        <input id="Text1" type="text" runat="server" />
        <input id="Button1" type="button" value="Submit" runat="server"
            onserverclick="Button1_ServerClick" />
    </div>
    </form>
</body>
</html>