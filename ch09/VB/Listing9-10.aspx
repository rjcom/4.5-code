<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub GridView1_CallingDataMethods(sender As Object, e As CallingDataMethodsEventArgs)
        e.DataMethodsObject = New VB.CustomerRepository()
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:GridView ID="GridView1" runat="server" ItemType="VB.Customer"
          SelectMethod="SelectCustomers"  OnCallingDataMethods="GridView1_CallingDataMethods">
     </asp:GridView>
    </div>
    </form>
</body>
</html>
