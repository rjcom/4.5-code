<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div> 
<asp:SqlDataSource ID="SqlDataSource1" Runat="server"
    SelectCommand="SELECT * FROM [Customers]"
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
    DataSourceMode="DataSet"
    ConflictDetection="CompareAllValues"
    EnableCaching="True" CacheKeyDependency="SomeKey" CacheDuration="Infinite" />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" />
    </div>
    </form>
</body>
</html>
