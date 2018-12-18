<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Private _context As New VB.CustomerContext()

    Public Function SelectCustomers(<System.Web.ModelBinding.QueryString> id As System.Nullable(Of Integer)) As IEnumerable(Of VB.Customer)
        If id.HasValue Then
            Return _context.Customer.Where(Function(c) c.ID = id).AsEnumerable()
        Else
            Return _context.Customer.AsEnumerable()
        End If
    End Function
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server" ItemType="VB.Customer"         
        SelectMethod="SelectCustomers"></asp:GridView>
    </div>
    
    </form>
</body>
</html>
