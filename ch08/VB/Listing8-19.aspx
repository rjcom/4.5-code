<%@ Page Language="VB" %>

<script runat="server">
    Protected Sub GridView1_Sorting(ByVal sender As Object, 
       ByVal e As GridViewSortEventArgs)
 
        Dim oldExpression As String = GridView1.SortExpression
        Dim newExpression As String = e.SortExpression

        If (oldExpression.IndexOf(newExpression) < 0) Then
            If (oldExpression.Length > 0) Then
                e.SortExpression = newExpression & "," & oldExpression
            Else
                e.SortExpression = newExpression
            End If
        Else
            e.SortExpression = oldExpression
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

        <asp:GridView ID="GridView1" Runat="server" DataSourceID="SqlDataSource1"
             DataKeyNames="CustomerID" AutoGenerateColumns="True"
             AllowSorting="True" OnSorting="GridView1_Sorting"></asp:GridView>
             
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


