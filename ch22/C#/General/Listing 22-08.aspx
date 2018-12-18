<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Page created: " + DateTime.Now.ToLongTimeString());
        string connStr = ConfigurationManager.ConnectionStrings["AppConnectionString1"].ConnectionString;
        SqlDependency.Start(connStr);
        SqlConnection connection = new SqlConnection(connStr);
        SqlCommand command = new SqlCommand("Select * FROM Customers", connection);
        SqlCacheDependency depends = new SqlCacheDependency(command);
        
        connection.Open();
        GridView1.DataSource = command.ExecuteReader();
        GridView1.DataBind();

        connection.Close();

        Response.AddCacheDependency(depends);
    }
</script>

<html>
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
