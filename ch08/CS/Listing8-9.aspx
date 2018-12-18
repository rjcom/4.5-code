<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
    <div> 
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete"
    InsertMethod="Insert" SelectMethod="Select" TypeName="Wrox.CS.CustomerRepository"
    UpdateMethod="Update" DataObjectTypeName="Wrox.CS.Customer">
    <SelectParameters>
        <asp:QueryStringParameter Name="customerId" QueryStringField="ID" 
        Type="string" />
    </SelectParameters>
</asp:ObjectDataSource>
      <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1" 
            AutoGenerateColumns="False" >
          <Columns>
              <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" 
                  SortExpression="CustomerID" />
              <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                  SortExpression="CompanyName" />
              <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                  SortExpression="ContactName" />
              <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" 
                  SortExpression="ContactTitle" />
          </Columns>
        </asp:GridView>
    </div>
    </form>
</body>
</html>
