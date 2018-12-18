<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(Object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Label1.Text = "Page is valid!";
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RequiredFieldValidator</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Selected="True">Select a profession</asp:ListItem>
                <asp:ListItem>Programmer</asp:ListItem>
                <asp:ListItem>Lawyer</asp:ListItem>
                <asp:ListItem>Doctor</asp:ListItem>
                <asp:ListItem>Artist</asp:ListItem>
            </asp:DropDownList>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                runat="server" Text="Please make a selection"
                ControlToValidate="DropDownList1"
                InitialValue="Select a profession">
            </asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit"
                OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
