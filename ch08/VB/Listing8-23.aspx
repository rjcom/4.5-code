<html>
<head id="Head1" runat="server">
    <title>Using the GridView server control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" 
            AutoGenerateColumns="False" DataKeyNames="CustomerID">
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" 
                    SortExpression="CustomerID" />
                <asp:HyperLinkField DataTextField="CompanyName" HeaderText="CompanyName"
                    DataNavigateUrlFields="CustomerID,Country" SortExpression="CompanyName"
                    DataNavigateUrlFormatString=
                        "http://www.example.com/Customer.aspx?id={0}&country={1}">
                </asp:HyperLinkField>
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                    SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" 
                    SortExpression="ContactTitle" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Region" HeaderText="Region" 
                      NullDisplayText="N/A" SortExpression="Region" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" 
                    SortExpression="PostalCode" />
                <asp:BoundField DataField="Country" HeaderText="Country" 
                    SortExpression="Country" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
                <asp:TemplateField HeaderText="CurrentStatus">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td align="center" style="width: 78px">
                                    <asp:Button ID="Button2" runat="server" Text="Enable" /></td>
                                <td align="center" style="width: 76px">
                                    <asp:Button ID="Button3" runat="server" Text="Disable" /></td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
            SelectCommand="SELECT * FROM [Customers]"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DataSourceMode="DataSet"
            ConflictDetection="CompareAllValues" EnableCaching="True"
            CacheKeyDependency="MyKey" CacheDuration="Infinite">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>

