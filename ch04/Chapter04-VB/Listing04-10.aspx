<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim myScript As String = "alert(document.getElementById('TextBox1').value);"
        Page.ClientScript.RegisterClientScriptBlock(Me.GetType(), "myKey", myScript,
            True)
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" Runat="server">Hello ASP.NET</asp:TextBox>
    </div>
    </form>
</body>
</html>