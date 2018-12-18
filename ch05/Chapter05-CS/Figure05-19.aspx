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
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Selected="True">English</asp:ListItem>
                <asp:ListItem>Russian</asp:ListItem>
                <asp:ListItem>Finnish</asp:ListItem>
                <asp:ListItem>Swedish</asp:ListItem>
            </asp:RadioButtonList>
        </div>
    </form>
</body>
</html>
