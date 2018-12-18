<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(object sender, System.EventArgs e)
    {
        DataSet myCustomers;
        myCustomers = (DataSet)Cache["firmCustomers"];

        if (myCustomers == null)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AppConnectionString1"].ConnectionString);
            SqlDataAdapter da = new SqlDataAdapter("Select * from Customers", conn);

            myCustomers = new DataSet();
            da.Fill(myCustomers);

            SqlCacheDependency myDependency = new SqlCacheDependency("Northwind", "Customers");
            Cache.Insert("firmCustomers", myCustomers, myDependency);

            Label1.Text = "Produced from database.";
        }
        else
        {
            Label1.Text = "Produced from Cache object.";
        }

        GridView1.DataSource = myCustomers;
        GridView1.DataBind();
    }
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
