<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object,
        ByVal e As System.EventArgs)
        Response.Write("Thanks for your donation!")
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CheckBox control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="Donate $10 to my cause!"
        OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true" />    
    </div>
    </form>
</body>
</html>