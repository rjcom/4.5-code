<html>
<head id="Head1" runat="server">
    <title>Using the GridView server control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    <asp:GridView ID="GridView1" Runat="server" DataSourceID="SqlDataSource1"
        DataKeyNames="CustomerID" AutoGenerateColumns="True">
        <EmptyDataTemplate>
            <table style="width: 225px">
                <tr>
                    <td colspan="2">
                        No data could be found based on your query parameters.
                        Please enter a new query.</td>
                </tr>
                <tr>
                    <td style="width: 162px">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td style="width: 102px">
                        <asp:Button ID="Button1" runat="server" Text="Search" /></td>
                </tr>
            </table>
        </EmptyDataTemplate>
        </asp:GridView>
    
    <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
            SelectCommand="SELECT * FROM [Customers]"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DataSourceMode="DataSet"
            ConflictDetection="CompareAllValues" EnableCaching="True"
            CacheKeyDependency="MyKey" CacheDuration="Infinite">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

