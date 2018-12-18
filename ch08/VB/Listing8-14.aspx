<%@ Page Language="VB" %>

<script runat="server">
    Protected Sub GridView1_RowDataBound(ByVal sender As Object, 
        ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs)

        If (e.Row.DataItem IsNot Nothing) Then
            Dim drv As System.Data.DataRowView = 
                CType(e.Row.DataItem, System.Data.DataRowView)

            If (drv("Region") Is System.DBNull.Value) Then
                e.Row.BackColor = System.Drawing.Color.Red
                e.Row.ForeColor = System.Drawing.Color.White
            End If
        End If
    End Sub
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