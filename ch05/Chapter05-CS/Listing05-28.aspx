<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(Object sender, EventArgs e)
    {
        Label MyNameLabel = new Label();
        MyNameLabel.Text = "Welcome, Jason!";
        PlaceHolder1.Controls.Add(MyNameLabel);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>PlaceHolder Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
    </form>
</body>
</html>