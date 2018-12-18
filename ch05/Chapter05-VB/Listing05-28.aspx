<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim MyNameLabel As New Label()
        MyNameLabel.Text = "Welcome, Jason!"
        PlaceHolder1.Controls.Add(MyNameLabel)
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PlaceHolder Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
    </div>
    </form>
</body>
</html>