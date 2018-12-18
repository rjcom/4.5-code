<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Dim _context As New CustomerContext()

    Public Function SelectCustomers() As IEnumerable(Of Customer)
        Return _context.Customer.AsEnumerable()
    End Function
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
