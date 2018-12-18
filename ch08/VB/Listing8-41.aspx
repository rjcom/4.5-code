<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:DetailsView ID="DetailsView1" Runat="server" DataSourceID="SqlDataSource1"
     AutoGenerateRows="False" DataKeyNames="CustomerID">
     <Fields>
          <asp:BoundField ReadOnly="True" HeaderText="CustomerID"
               DataField="CustomerID" SortExpression="CustomerID"
               Visible="False" />
          <asp:BoundField ReadOnly="True" HeaderText="CompanyName"
               DataField="CompanyName" SortExpression="CompanyName" />
          <asp:BoundField HeaderText="ContactName" DataField="ContactName"
               SortExpression="ContactName" />
          <asp:BoundField HeaderText="ContactTitle" DataField="ContactTitle"
               SortExpression="ContactTitle" />
      </Fields>
</asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
            SelectCommand="SELECT * FROM [Customers]"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DataSourceMode="DataSet">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>




