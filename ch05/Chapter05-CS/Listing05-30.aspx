﻿<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void BulletedList1_Click(object sender, BulletedListEventArgs e)
    {
        Label1.Text = "The index of item you selected: " + e.Index +
            "<br>The value of the item selected: " + 
            BulletedList1.Items[e.Index].Text;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BulletedList Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:BulletedList ID="BulletedList1" runat="server"
            OnClick="BulletedList1_Click" DisplayMode="LinkButton">
            <asp:ListItem>United States</asp:ListItem>
            <asp:ListItem>United Kingdom</asp:ListItem>
            <asp:ListItem>Finland</asp:ListItem>
            <asp:ListItem>Russia</asp:ListItem>
            <asp:ListItem>Sweden</asp:ListItem>
            <asp:ListItem>Estonia</asp:ListItem>
        </asp:BulletedList>
        <asp:Label ID="Label1" runat="server">
        </asp:Label>
    </form>
</body>
</html>