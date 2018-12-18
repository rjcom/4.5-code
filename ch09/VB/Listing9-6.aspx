<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
   Private _context As New VB.CustomerContext()

    Public Function SelectCustomers() As IQueryable(Of VB.Customer)
        Return _context.Customer.AsQueryable()
    End Function

    Public Sub InsertCustomer(customer As VB.Customer)
        _context = New VB.CustomerContext()
        If ModelState.IsValid Then
            _context.Customer.Add(customer)
        End If
    End Sub
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
    <asp:DetailsView runat="server" ItemType="VB.Customer" SelectMethod="SelectCustomers"
        InsertMethod="InsertCustomer" AutoGenerateInsertButton="true" AllowPaging="true"></asp:DetailsView>
    </div>
    </form>
</body>
</html>
