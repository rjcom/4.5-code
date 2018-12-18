<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Image1.ImageUrl = "~/Images/Windows8.jpg"
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Image Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Windows.jpg" /><br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Change Image"
                OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>