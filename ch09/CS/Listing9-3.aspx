<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    CustomerContext _context = new CustomerContext();
     
    public IQueryable<Customer> SelectCustomers()    
    {                  
        return _context.Customer.AsQueryable();        
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
        AllowPaging="true" AllowSorting="true" PageSize="2"
        SelectMethod="SelectCustomers"></asp:GridView>
    </div>
    </form>
</body>
</html>
