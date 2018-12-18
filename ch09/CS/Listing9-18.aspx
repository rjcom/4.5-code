<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    CustomerContext _context = new CustomerContext();
   
    public IEnumerable<Customer> SelectCustomers()
    {       
        return _context.Customer.AsEnumerable();
    }

    protected void GridView1_CreatingModelDataSource(object sender, CreatingModelDataSourceEventArgs e)
    {
        e.ModelDataSource = new CS.MyModelDataSource((GridView)sender);
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" ItemType="Customer" SelectMethod="SelectCustomers" 
        OnCreatingModelDataSource="GridView1_CreatingModelDataSource"></asp:GridView>
    </div>
    </form>
</body>
</html>
