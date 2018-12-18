<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Write("You selected item number " +
            DropDownList1.SelectedValue + "<br>");
        Response.Write("You didn't select item number " +
            DropDownList1.Items[1].Value);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DropDownList Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="1">First Choice</asp:ListItem>
                <asp:ListItem Value="2" Enabled="False">Second Choice</asp:ListItem>
                <asp:ListItem Value="3">Third Choice</asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>