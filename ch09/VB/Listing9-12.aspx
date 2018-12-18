<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
   Private _context As New VB.CustomerContext()

    Public Function SelectCustomer() As VB.Customer
        Return _context.Customer.First()
    End Function
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="editCustomer" runat="server" ItemType="VB.Customer" SelectMethod="SelectCustomer">
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
