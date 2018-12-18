<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    CustomerContext _context = new CustomerContext();

    public void InsertCustomer(Customer customer)
    {
        if (ModelState.IsValid)
        {
        }
    }
    
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
