<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    CustomerContext _context = new CustomerContext();

    public Customer SelectCustomer()
    {
        return _context.Customer.First();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="editCustomer" runat="server" ItemType="Customer" SelectMethod="SelectCustomer">
                <ItemTemplate>
                    <div>
                        First Name:<%# Item.FirstName %>
                    </div>
                </ItemTemplate>
            </asp:FormView>

        </div>
    </form>
</body>
</html>
