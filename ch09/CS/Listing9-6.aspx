<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    CustomerContext _context = new CustomerContext();    

    public IQueryable<Customer> SelectCustomers()
    {
        return _context.Customer.AsQueryable();
    }

    public void InsertCustomer(Customer customer)
    {
        _context = new CustomerContext();        
        if(ModelState.IsValid)
        {
            _context.Customer.Add(customer);
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ValidationSummary runat="server" ShowModelStateErrors="true" />
        <asp:ScriptManager runat="server">
            <Scripts>
                <asp:ScriptReference Name="jquery" />
            </Scripts>
        </asp:ScriptManager>
    <asp:DetailsView runat="server" ItemType="Customer" SelectMethod="SelectCustomers"
        InsertMethod="InsertCustomer" AutoGenerateInsertButton="true" AllowPaging="true"></asp:DetailsView>
    </div>
    </form>
</body>
</html>
