<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) _
        Handles Button1.Click
        
        Dim ws As New MyCustomDataContractServiceReference.MyCustomDataContractServiceClient()
        Dim myCustomer As New MyCustomDataContractServiceReference.Customer()
          
        myCustomer.FirstName = "Jason"
        myCustomer.LastName = "Gaylord"
        Response.Write(ws.HelloFullName(myCustomer))
        ws.Close()
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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