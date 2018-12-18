<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        MyCustomDataContractServiceReference.MyCustomDataContractServiceClient ws = new
            MyCustomDataContractServiceReference.MyCustomDataContractServiceClient();
        MyCustomDataContractServiceReference.Customer myCustomer = new 
            MyCustomDataContractServiceReference.Customer();

        myCustomer.Firstname = "Jason";
        myCustomer.Lastname = "Gaylord";
        Label1.Text = ws.HelloFullName(myCustomer);
        ws.Close();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>