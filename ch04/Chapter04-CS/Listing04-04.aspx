<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Progress1.Attributes["max"] = "100";
        Progress1.Attributes["value"] = "25";
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Using the HtmlGenericControl class</title>
    <meta id="Meta1" runat="server" />
</head>
<body>
    <form id="form2" runat="server">
        <progress id="Progress1" runat="server"></progress>
    </form>
</body>
</html>