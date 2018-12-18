<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0,
   Culture=neutral, PublicKeyToken=31bf3856ad364e35"
    Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>MultiView Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 451px">
            <asp:Chart ID="Chart1" runat="server"
                DataSourceID="SqlDataSource1"
                Width="500px">
                <Series>
                    <asp:Series ChartType="Bar" Name="Series1"
                        XValueMember="ProductName"
                        YValueMembers="UnitsInStock" YValuesPerPoint="2">
                    </asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                SelectCommand="SELECT TOP(5) [ProductName], [UnitsInStock] FROM [Products] ORDER BY ProductName DESC"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
