<%@ Page Language="C#" %>

<script runat="server">
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.DataItem != null)
        {
            System.Data.DataRowView drv = (System.Data.DataRowView)e.Row.DataItem;

            if (drv["Region"] == System.DBNull.Value)
            {
                e.Row.BackColor = System.Drawing.Color.Red;
                e.Row.ForeColor = System.Drawing.Color.White;
            }
        }
    }
</script>

<html>
<head id="Head1" runat="server">
    <title>Using the GridView server control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
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