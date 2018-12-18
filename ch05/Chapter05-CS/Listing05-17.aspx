<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Image1.ImageUrl = "~/Images/Windows8.jpg";
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Image Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Windows.jpg" DescriptionUrl="~/WindowsImage.txt" /><br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Change Image"
                OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>