<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void GridView1_CallingDataMethods(object sender, CallingDataMethodsEventArgs e)
    {
        e.DataMethodsObject = new CustomerRepository();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:GridView ID="GridView1" runat="server" ItemType="Customer"
          SelectMethod="SelectCustomers"  OnCallingDataMethods="GridView1_CallingDataMethods">
     </asp:GridView>
    </div>
    </form>
</body>
</html>
