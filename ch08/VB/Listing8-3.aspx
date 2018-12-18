<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
            SelectCommand="SELECT * FROM [Customers] WHERE ([CustomerID] = @CustomerID)"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DataSourceMode="DataSet">
            <SelectParameters>
                <asp:QueryStringParameter Name="CustomerID"
                    QueryStringField="ID" Type="String">
                </asp:QueryStringParameter>
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" />
    </div>
    </form>
</body>
</html>
