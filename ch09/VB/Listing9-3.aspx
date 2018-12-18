<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Private _context As New VB.CustomerContext()

    Public Function SelectCustomers() As IQueryable(Of VB.Customer)
        Return _context.Customer.AsQueryable()
    End Function
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" ItemType="VB.Customer" 
        AllowPaging="true" AllowSorting="true" PageSize="2"
        SelectMethod="SelectCustomers"></asp:GridView>
    </div>
    </form>
</body>
</html>
