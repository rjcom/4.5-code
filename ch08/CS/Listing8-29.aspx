<html>
<head id="Head1" runat="server">
    <title>Using the GridView server control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:GridView ID="GridView1" Runat="server" DataSourceID="SqlDataSource1"
     DataKeyNames="CustomerID" AutoGenerateColumns="False"
     AllowSorting="True" AllowPaging="True">
            <Columns>
<asp:CommandField ShowHeader="True" HeaderText="Command"
     ShowEditButton="True"></asp:CommandField>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" 
                    SortExpression="CustomerID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                    SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                    SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" 
                    SortExpression="ContactTitle" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Region" HeaderText="Region" 
                    SortExpression="Region" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" 
                    SortExpression="PostalCode" />
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
             SelectCommand="SELECT * FROM [Customers]"
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
             DataSourceMode="DataSet"
             UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName,
                  [ContactName] = @ContactName, [ContactTitle] = @ContactTitle,
                  [Address] = @Address, [City] = @City, [Region] = @Region,
                  [PostalCode] = @PostalCode, [Country] = @Country, [Phone] = @Phone,
                  [Fax] = @Fax WHERE [CustomerID] = @original_CustomerID">
             <UpdateParameters>
                 <asp:Parameter Type="String" Name="CompanyName"></asp:Parameter>
                 <asp:Parameter Type="String" Name="ContactName"></asp:Parameter>
                 <asp:Parameter Type="String" Name="ContactTitle"></asp:Parameter>
                 <asp:Parameter Type="String" Name="Address"></asp:Parameter>
                 <asp:Parameter Type="String" Name="City"></asp:Parameter>
                 <asp:Parameter Type="String" Name="Region"></asp:Parameter>
                 <asp:Parameter Type="String" Name="PostalCode"></asp:Parameter>
                 <asp:Parameter Type="String" Name="Country"></asp:Parameter>
                 <asp:Parameter Type="String" Name="Phone"></asp:Parameter>
                 <asp:Parameter Type="String" Name="Fax"></asp:Parameter>
                 <asp:Parameter Type="String" Name="CustomerID"></asp:Parameter>
             </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>


