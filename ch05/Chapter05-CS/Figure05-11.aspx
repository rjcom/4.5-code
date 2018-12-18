<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Products" 
                AssociatedControlID="ListBox1" />
<asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
    <asp:ListItem>ASP.NET 4.5</asp:ListItem>
    <asp:ListItem>ASP.NET MVC 4</asp:ListItem>
    <asp:ListItem>jQuery 1.8.x</asp:ListItem>
    <asp:ListItem>Visual Studio 2012</asp:ListItem>
</asp:ListBox>
        </div>
    </form>
</body>
</html>
