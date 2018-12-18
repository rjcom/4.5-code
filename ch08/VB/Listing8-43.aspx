<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
      <form id="form1" runat="server">
    <div>
<asp:DetailsView ID="DetailsView1" runat="server"
     DataSourceId="SqlDataSource1"
     AutoGenerateRows="True" AutoGenerateInsertButton="True"
     DataKeyNames="CustomerID" />

        <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
            SelectCommand="SELECT * FROM [Customers]"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DataSourceMode="DataSet">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
