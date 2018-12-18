<%@ Page Language="VB" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim myCustomers As DataSet
        myCustomers = CType(Cache("firmCustomers"), DataSet)

        If myCustomers Is Nothing Then
           Dim conn As SqlConnection = 
            New SqlConnection(ConfigurationManager.ConnectionStrings("AppConnectionString1").ConnectionString)
           Dim da As SqlDataAdapter = 
            New SqlDataAdapter("Select * From Customers", conn)

           myCustomers = New DataSet
           da.Fill(myCustomers)

           Dim myDependency As SqlCacheDependency = 
              New SqlCacheDependency("Northwind", "Customers")
           Cache.Insert("firmCustomers", myCustomers, myDependency)

           Label1.Text = "Produced from database."
        Else
           Label1.Text = "Produced from Cache object."      
        End If

        GridView1.DataSource = myCustomers
        GridView1.DataBind()
    End Sub
</script>

<html>
<head runat="server">
    <title>Sql Cache Invalidation</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" Runat="server"></asp:Label><br />
        <br />
        <asp:GridView ID="GridView1" Runat="server"></asp:GridView>    
    </div>
    </form>
</body>
</html>
