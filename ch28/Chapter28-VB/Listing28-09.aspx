<%@ Page Language="VB" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim dbConnection As New SqlConnection( _
            ConfigurationManager.ConnectionStrings("ExampleApplication").ConnectionString)
    End Sub
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
