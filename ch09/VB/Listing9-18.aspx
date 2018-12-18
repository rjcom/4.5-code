<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Private _context As New VB.CustomerContext()

    Public Function SelectCustomers() As IEnumerable(Of VB.Customer)
        Return _context.Customer.AsEnumerable()
    End Function

    Protected Sub GridView1_CreatingModelDataSource(sender As Object, e As CreatingModelDataSourceEventArgs)
        e.ModelDataSource = New VB.MyModelDataSource(DirectCast(sender, GridView))
    End Sub

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" ItemType="VB.Customer" SelectMethod="SelectCustomers" 
        OnCreatingModelDataSource="GridView1_CreatingModelDataSource"></asp:GridView>
    </div>
    </form>
</body>
</html>
