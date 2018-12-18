<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
protected void Page_Load(object sender, EventArgs e)
{
    string myScript = @"alert(document.forms[0]['TextBox1'].value);";
    Page.ClientScript.RegisterStartupScript(this.GetType(),
        "MyScript", myScript, true);
}
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using JavaScript</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" Runat="server">Hello ASP.NET</asp:TextBox>
    </div>
    </form>
</body>
</html>