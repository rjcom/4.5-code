<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
   Private _context As New CustomerContext()

Public Sub InsertCustomer(customer As Customer)
	If ModelState.IsValid Then
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
        <asp:ValidationSummary runat="server" />
    <asp:DetailsView ID="DetailsView1" runat="server" 
        ItemType="Customer" 
        InsertMethod="InsertCustomer" DefaultMode="Insert" AutoGenerateInsertButton="true"
        >

    </asp:DetailsView>
    </div>
    </form>
</body>
</html>
