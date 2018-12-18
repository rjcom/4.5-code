<html>
<head id="Head1" runat="server">
    <title>Using the GridView server control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
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
</asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

