<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateRows="True"
            AutoGenerateInsertButton="True" DataKeyNames="CustomerID" />
<asp:SqlDataSource ID="SqlDataSource1" runat="server" SelectCommand="SELECT * FROM [Customers]"
    InsertCommand="INSERT INTO [Customers] ([CustomerID], [CompanyName],
[ContactName], [ContactTitle], [Address], [City], [Region], [PostalCode],
[Country], [Phone], [Fax]) VALUES (@CustomerID, @CompanyName,
@ContactName, @ContactTitle, @Address, @City, @Region, @PostalCode,
@Country, @Phone, @Fax)" DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @original_CustomerID"
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
    <InsertParameters>
        <asp:Parameter Type="String" Name="CustomerID"></asp:Parameter>
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
    </InsertParameters>
</asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
