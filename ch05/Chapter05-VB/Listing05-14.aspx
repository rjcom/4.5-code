<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object,
      ByVal e As System.EventArgs)
        Label1.Text = "You selected:<br>"
        For Each li As ListItem In CheckBoxList1.Items
            If li.Selected = True Then
                Label1.Text += li.Text & "<br>"
            End If
        Next
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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