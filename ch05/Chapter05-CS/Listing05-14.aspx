<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "You selected:<br>";
        foreach (ListItem li in CheckBoxList1.Items)
        {
            if (li.Selected == true)
            {
                Label1.Text += li.Text + "<br>";
            }
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CheckBoxList control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Submit Choices"
                OnClick="Button1_Click" /><br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server"
                DataSourceID="SqlDataSource1" DataTextField="CompanyName"
                RepeatColumns="3" BorderColor="Black"
                BorderStyle="Solid" BorderWidth="1px">
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                SelectCommand="SELECT DISTINCT TOP 12 [CompanyName] FROM [SalesLT].[Customer] ORDER BY [CompanyName]"
                ConnectionString="<%$ ConnectionStrings:AdventureWorksConnectionString %>"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>