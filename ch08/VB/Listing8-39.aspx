<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:DetailsView ID="DetailsView1" Runat="server" DataSourceID="SqlDataSource1"
             AutoGenerateRows="True" DataKeyNames="CustomerID"></asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
            SelectCommand="SELECT * FROM [Customers]"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DataSourceMode="DataSet">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>


