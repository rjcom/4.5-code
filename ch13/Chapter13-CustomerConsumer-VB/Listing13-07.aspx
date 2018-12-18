<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim ws As New AdventureWorksCustomers.Customers()
        GridView1.DataSource = ws.GetCustomers()
        GridView1.DataBind()
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Service Consumer Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Get Customers"
                OnClick="Button1_Click" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" BorderWidth="1px"
                BackColor="#DEBA84" CellPadding="3" CellSpacing="2" BorderStyle="None"
                BorderColor="#DEBA84">
                <FooterStyle ForeColor="#8C4510" BackColor="#F7DFB5"></FooterStyle>
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center"></PagerStyle>
                <HeaderStyle ForeColor="White" Font-Bold="True"
                    BackColor="#A55129"></HeaderStyle>
                <SelectedRowStyle ForeColor="White" Font-Bold="True"
                    BackColor="#738A9C"></SelectedRowStyle>
                <RowStyle ForeColor="#8C4510" BackColor="#FFF7E7"></RowStyle>
            </asp:GridView>
        </div>
    </form>
</body>
</html>