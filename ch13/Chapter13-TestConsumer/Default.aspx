<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        //AWServiceReference. svc = new AdventureWorksEntities(new
        //    Uri("http://localhost:5526/AdventureWorksDataService.svc").ToString());
        //GridView1.DataSource = svc.Customers;
        //GridView1.DataBind();
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Working with Data Services</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" BackColor="White"
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px"
            CellPadding="4"
            ForeColor="Black" GridLines="Vertical">
            <RowStyle BackColor="#F7F7DE" />
            <FooterStyle BackColor="#CCCC99" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black"
                HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True"
                ForeColor="White" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True"
                ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </form>
</body>
</html>