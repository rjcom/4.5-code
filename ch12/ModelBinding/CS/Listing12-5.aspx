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
    <asp:FormView runat="server" ID="FormView1" DefaultMode="Insert"
        ItemType="Customer" InsertMethod="InsertCustomer">
                <InsertItemTemplate>
                    <table>
                        <asp:DynamicEntity ID="DynamicEntity1" runat="server" Mode="Insert" />
                        <tr>
                            <td>
                                <asp:LinkButton ID="Insert" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:LinkButton ID="Cancel" runat="server" CommandName="Cancel" Text="Cancel" CausesValidation="false" />
                            </td>
                        </tr>
                    </table>
                </InsertItemTemplate>
            </asp:FormView>

    </div>
    </form>
</body>
</html>
