<%@ Page Language="VB" %>
<%@ OutputCache Duration="30" VaryByParam="none" SqlDependency="Northwind:Customers"%>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Label1.Text = "Page created at " & DateTime.Now.ToString()
    End Sub
</script>

<html>
<head id="Head1" runat="server">
    <title>Sql Cache Invalidation</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server"></asp:Label><br />
        <br />
        <asp:GridView ID="GridView1" Runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" Runat="server" 
         SelectCommand="Select * From Customers"
         ConnectionString="<%$ ConnectionStrings:AppConnectionString1 %>" 
         ProviderName="<%$ ConnectionStrings:AppConnectionString1.providername %>">
        </asp:SqlDataSource>
    </form>
</body>
</html>
