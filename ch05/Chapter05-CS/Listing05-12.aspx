<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        ListBox1.Items.Add(TextBox1.Text.ToString());
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "You selected from the ListBox:<br>";
        foreach (ListItem li in ListBox1.Items)
        {
            if (li.Selected)
            {
                Label1.Text += li.Text + "<br>";
            }
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Using the ListBox</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Add an additional item"
                OnClick="Button1_Click" /><br />
            <br />
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                <asp:ListItem>ASP.NET 4.5</asp:ListItem>
                <asp:ListItem>ASP.NET MVC 4</asp:ListItem>
                <asp:ListItem>jQuery 1.8.x</asp:ListItem>
                <asp:ListItem>Visual Studio 2012</asp:ListItem>
            </asp:ListBox><br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Submit"
                OnClick="Button2_Click" /><br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>