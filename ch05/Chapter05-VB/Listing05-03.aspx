<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        FirstNameTextBox.Focus()
    End Sub

    Protected Sub FirstNameTextBox_TextChanged(sender As Object, e As EventArgs)

    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="FirstNameTextBox" runat="server" OnTextChanged="FirstNameTextBox_TextChanged" />
    </div>
    </form>
</body>
</html>
