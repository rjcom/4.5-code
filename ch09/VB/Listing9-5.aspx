<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Private _context As New VB.CustomerContext()

    Public Function SelectCustomersForDropDownList() As IEnumerable(Of VB.Customer)
        Return _context.Customer.AsEnumerable()
    End Function
    Public Function SelectCustomers(<System.Web.ModelBinding.Control> DropDown1 As System.Nullable(Of Integer)) As IEnumerable(Of VB.Customer)
        If DropDown1.HasValue Then
            Return _context.Customer.Where(Function(c) c.ID = DropDown1).AsEnumerable()
        Else
            Return _context.Customer.AsEnumerable()
        End If
    End Function
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDown1" runat="server" ItemType="VB.Customer"
                SelectMethod="SelectCustomersForDropDownList" AppendDataBoundItems="true" AutoPostBack="true"
                DataTextField="ID" DataValueField="ID">
            </asp:DropDownList>
            <asp:GridView ID="GridView1" runat="server" ItemType="VB.Customer"
                SelectMethod="SelectCustomers">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
