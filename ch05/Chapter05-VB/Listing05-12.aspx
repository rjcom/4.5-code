<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object,
        ByVal e As System.EventArgs)
        ListBox1.Items.Add(TextBox1.Text.ToString())
    End Sub
    Protected Sub Button2_Click(ByVal sender As Object,
    ByVal e As System.EventArgs)
        Label1.Text = "You selected from the ListBox:<br>"
        For Each li As ListItem In ListBox1.Items
            If li.Selected = True Then
                Label1.Text += li.Text & "<br>"
            End If
        Next
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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