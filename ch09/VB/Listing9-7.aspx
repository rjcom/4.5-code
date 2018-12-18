<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Private _context As New VB.CustomerContext()

    Public Function SelectCustomers() As VB.Customer
        Return _context.Customer.First()
    End Function

Public Sub UpdateCustomer(id As Integer)
        _context = New VB.CustomerContext()
	Dim customer = _context.Customer.Where(Function(c) c.ID = id).First()
	TryUpdateModel(customer)
	If ModelState.IsValid Then
		'Save to database
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
    <asp:DetailsView runat="server" DataKeyNames="ID" ItemType="VB.Customer" SelectMethod="SelectCustomers" AutoGenerateEditButton="true"
        UpdateMethod="UpdateCustomer"></asp:DetailsView>
    </div>
    </form>
</body>
</html>
