<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <asp:GridView ID="GridView1" runat="server" AllowPaging="true" DataSourceID="EntityDataSource1" />
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" 
            ConnectionString="name=NorthwindVBEntities" 
            DefaultContainerName="NorthwindVBEntities" EnableDelete="True" 
            EnableFlattening="False" EnableInsert="True" EnableUpdate="True" 
            EntitySetName="Customers">
        </asp:EntityDataSource>
    </div>
    </form>
</body>
</html>
