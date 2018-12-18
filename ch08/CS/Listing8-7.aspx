<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:EntityDataSource ID="EntityDataSource1" runat="server"
                ConnectionString="name=NorthwindCSEntities"
                DefaultContainerName="NorthwindCSEntities" EnableDelete="True"
                EnableFlattening="False" EnableInsert="True" EnableUpdate="True"
                EntitySetName="Customers" EntityTypeFilter="Customer" />
            <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1"
                AutoGenerateColumns="True" DataKeyNames="CustomerID">
            </asp:GridView>
        </div>
        <asp:QueryExtender ID="QueryExtender1" runat="server" TargetControlID="EntityDataSource1">
            <asp:SearchExpression SearchType="StartsWith" DataFields="CustomerID">
                <asp:QueryStringParameter DefaultValue="A" QueryStringField="s" />
            </asp:SearchExpression>
        </asp:QueryExtender>
    </form>
</body>
</html>
