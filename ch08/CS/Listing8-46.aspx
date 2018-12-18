<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" 
            DataKeyNames="CustomerID">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="CustomerIDLabel" runat="server" 
                            Text='<%# Eval("CustomerID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CompanyNameLabel" runat="server" 
                            Text='<%# Eval("CompanyName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactNameLabel" runat="server" 
                            Text='<%# Eval("ContactName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactTitleLabel" runat="server" 
                            Text='<%# Eval("ContactTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RegionLabel" runat="server" Text='<%# Eval("Region") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PostalCodeLabel" runat="server" 
                            Text='<%# Eval("PostalCode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                            Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="CustomerIDLabel1" runat="server" 
                            Text='<%# Eval("CustomerID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CompanyNameTextBox" runat="server" 
                            Text='<%# Bind("CompanyName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ContactNameTextBox" runat="server" 
                            Text='<%# Bind("ContactName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ContactTitleTextBox" runat="server" 
                            Text='<%# Bind("ContactTitle") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PostalCodeTextBox" runat="server" 
                            Text='<%# Bind("PostalCode") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
                    <tr>
                        <td>
                            No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                            Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                            Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="CustomerIDTextBox" runat="server" 
                            Text='<%# Bind("CustomerID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CompanyNameTextBox" runat="server" 
                            Text='<%# Bind("CompanyName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ContactNameTextBox" runat="server" 
                            Text='<%# Bind("ContactName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ContactTitleTextBox" runat="server" 
                            Text='<%# Bind("ContactTitle") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PostalCodeTextBox" runat="server" 
                            Text='<%# Bind("PostalCode") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="CustomerIDLabel" runat="server" 
                            Text='<%# Eval("CustomerID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CompanyNameLabel" runat="server" 
                            Text='<%# Eval("CompanyName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactNameLabel" runat="server" 
                            Text='<%# Eval("ContactName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactTitleLabel" runat="server" 
                            Text='<%# Eval("ContactTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RegionLabel" runat="server" Text='<%# Eval("Region") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PostalCodeLabel" runat="server" 
                            Text='<%# Eval("PostalCode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table ID="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">
                                        CustomerID</th>
                                    <th runat="server">
                                        CompanyName</th>
                                    <th runat="server">
                                        ContactName</th>
                                    <th runat="server">
                                        ContactTitle</th>
                                    <th runat="server">
                                        Address</th>
                                    <th runat="server">
                                        City</th>
                                    <th runat="server">
                                        Region</th>
                                    <th runat="server">
                                        PostalCode</th>
                                    <th runat="server">
                                        Country</th>
                                    <th runat="server">
                                        Phone</th>
                                    <th runat="server">
                                        Fax</th>
                                </tr>
                                <tr ID="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="">
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="CustomerIDLabel" runat="server" 
                            Text='<%# Eval("CustomerID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CompanyNameLabel" runat="server" 
                            Text='<%# Eval("CompanyName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactNameLabel" runat="server" 
                            Text='<%# Eval("ContactName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ContactTitleLabel" runat="server" 
                            Text='<%# Eval("ContactTitle") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CityLabel" runat="server" Text='<%# Eval("City") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RegionLabel" runat="server" Text='<%# Eval("Region") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PostalCodeLabel" runat="server" 
                            Text='<%# Eval("PostalCode") %>' />
                    </td>
                    <td>
                        <asp:Label ID="CountryLabel" runat="server" Text='<%# Eval("Country") %>' />
                    </td>
                    <td>
                        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="FaxLabel" runat="server" Text='<%# Eval("Fax") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
<asp:DataPager ID="DataPager1" runat="server" PagedControlID="ListView1">
    <Fields>
        <asp:NumericPagerField />      
    </Fields> 
</asp:DataPager>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        SelectCommand="SELECT * FROM [Customers]"
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"></asp:SqlDataSource>
 </div>
    </form>
</body>
</html>


