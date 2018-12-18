<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    CustomerContext _context = new CustomerContext();
    
    public IEnumerable<Customer> SelectCustomers([AggregateValue] int? id)
    {
        if(id.HasValue)
        return _context.Customer.Where(c => c.ID == id).AsEnumerable();
        else
            return _context.Customer.AsEnumerable();    
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" ItemType="Customer"         
        SelectMethod="SelectCustomers"></asp:GridView>
    </div>
    
    </form>
</body>
</html>
