<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    CustomerContext _context = new CustomerContext();

    public IEnumerable<Customer> SelectCustomers()
    {       
        return _context.Customer.AsEnumerable();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" ItemType="Customer" SelectMethod="SelectCustomers"></asp:GridView>
    </div>
    </form>
</body>
</html>
