<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs)
        Response.Write("OnTextChanged event triggered")
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Write("OnClick event triggered")
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Triggering an event when a TextBox</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"
                OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button"
                OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
