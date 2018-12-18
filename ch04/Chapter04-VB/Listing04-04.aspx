<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Progress1.Attributes("max") = 100
        Progress1.Attributes("value") = 25
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using the HtmlGenericControl class</title>
</head>
<body>
    <form id="form1" runat="server">
        <progress id="Progress1" runat="server"></progress>
    </form>
</body>
</html>