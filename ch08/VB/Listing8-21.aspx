<html>
<head id="Head1" runat="server">
    <title>Using the GridView server control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <asp:GridView ID="GridView1" Runat="server" DataSourceID="SqlDataSource1"
         DataKeyNames="CustomerID" AutoGenerateColumns="True"
         AllowSorting="True" AllowPaging="True" PageSize="10">
         <PagerStyle HorizontalAlign="Center"></PagerStyle>
         <PagerSettings Position="TopAndBottom"
              FirstPageText="Go to the first page"
              LastPageText="Go to the last page" Mode="NextPreviousFirstLast">
         </PagerSettings>
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


