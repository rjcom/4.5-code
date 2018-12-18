<%@ Page Language="VB" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Response.Write("Page created: " + DateTime.Now.ToLongTimeString())
        Dim connStr As String = ConfigurationManager.ConnectionStrings("AppConnectionString1").ConnectionString
        SqlDependency.Start(connStr)
        Dim connection As New SqlConnection(connStr)
        Dim command As New SqlCommand("Select * FROM Customers", connection)
        Dim depends As New SqlCacheDependency(command)

        connection.Open()
        GridView1.DataSource = command.ExecuteReader()
        GridView1.DataBind()

        connection.Close()

        'Now, do what you want with the sqlDependency object like:
        Response.AddCacheDependency(depends)
    End Sub

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" Height="400px" Width="400px">
        </asp:GridView>
    </form>
</body>
</html>
