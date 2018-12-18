<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(Object sender, EventArgs e)
    {
        SqlConnection dbConnection = new
            SqlConnection(ConfigurationManager.ConnectionStrings["ExampleApplication"]
            .ConnectionString);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
