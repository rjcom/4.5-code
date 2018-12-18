<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div> 
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="Select" 
            TypeName="Wrox.VB.CustomerRepository">
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