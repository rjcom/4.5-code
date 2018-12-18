<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    CustomerContext _context = new CustomerContext();

    public IEnumerable<Customer> SelectCustomersForDropDownList()
    {
        return _context.Customer.AsEnumerable();
    }
    public IEnumerable<Customer> SelectCustomers([System.Web.ModelBinding.Control] int? DropDown1)
    {
        if (DropDown1.HasValue)
            return _context.Customer.Where(c => c.ID == DropDown1).AsEnumerable();
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
            <asp:DropDownList ID="DropDown1" runat="server" ItemType="Customer"
                SelectMethod="SelectCustomersForDropDownList" AppendDataBoundItems="true" AutoPostBack="true"
                DataTextField="ID" DataValueField="ID">
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" ItemType="Customer"
                SelectMethod="SelectCustomers">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
