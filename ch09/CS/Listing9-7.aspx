<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    CustomerContext _context = new CustomerContext();    

    public Customer SelectCustomers()
    {
        return _context.Customer.First();
    }

    public void UpdateCustomer(int id)
    {
        _context = new CustomerContext();
        var customer = _context.Customer.Where(c => c.ID == id).First();
        TryUpdateModel(customer);
        if(ModelState.IsValid)
        {
           //Save to database
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
        <asp:ValidationSummary runat="server" ShowModelStateErrors="true" />
        <asp:ScriptManager runat="server">
            <Scripts>
                <asp:ScriptReference Name="jquery" />
            </Scripts>
        </asp:ScriptManager>
      <asp:DetailsView DataKeyNames="ID" runat="server" ItemType="Customer" 
          SelectMethod="SelectCustomers" AutoGenerateEditButton="true"
        UpdateMethod="UpdateCustomer"></asp:DetailsView>
    </div>
    </form>
</body>
</html>
