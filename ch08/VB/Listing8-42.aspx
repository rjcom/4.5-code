<html>
<head id="Head1" runat="server">
    <title>GridView & DetailsView Controls</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:GridView ID="GridView1" runat="server"
                 DataSourceId="SqlDataSource1" AllowPaging="True"
                 DataKeyNames="CustomerID" AutoGenerateSelectButton="True"
                 AutoGenerateColumns="True" PageSize="5">
                <SelectedRowStyle ForeColor="White" BackColor="#738A9C"
                     Font-Bold="True"></SelectedRowStyle>
            </asp:GridView>
        </p>
        <p><b>Customer Details:</b></p>
        <asp:DetailsView ID="DetailsView1" runat="server"
             DataSourceId="SqlDataSource2"
             AutoGenerateRows="True" DataKeyNames="CustomerID">
        </asp:DetailsView>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
             SelectCommand="SELECT * FROM [Customers]"
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" />
             
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
             SelectCommand="SELECT * FROM [Customers]"
             FilterExpression="CustomerID='{0}'"
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>">
             <FilterParameters>
                 <asp:ControlParameter Name="CustomerID" ControlId="GridView1"
                      PropertyName="SelectedValue"></asp:ControlParameter>
             </FilterParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
