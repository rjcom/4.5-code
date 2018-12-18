<%@ Page Language="C#" %>
          
<script runat="server">
    protected void Page_Init()
    {
        GridView1.EnableDynamicData(typeof(Customer));
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DynamicDataManager Example</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>       
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
            DataSourceID="EntityDataSource1"  
            AutoGenerateColumns="False" DataKeyNames="RegionID">
            <Columns>
                <asp:BoundField DataField="RegionID" HeaderText="RegionID" ReadOnly="True" SortExpression="RegionID"></asp:BoundField>
                <asp:BoundField DataField="RegionDescription" HeaderText="RegionDescription" SortExpression="RegionDescription"></asp:BoundField>

            </Columns>
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server"
            EntitySetName="Regions"
            ConnectionString="name=NORTHWNDEntities"
            DefaultContainerName="NORTHWNDEntities"
            EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True">
        </asp:EntityDataSource>
        
          
    </div>
    </form>
</body>
</html>
