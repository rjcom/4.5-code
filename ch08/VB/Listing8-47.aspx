<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Using the FormView control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FormView ID="FormView1" Runat="server" DataSourceID="SqlDataSource1"
             DataKeyNames="CustomerID" AllowPaging="True">
            <EditItemTemplate>
                CustomerID:
                <asp:Label Text='<%# Eval("CustomerID") %>' Runat="server"
                     ID="CustomerIDLabel1">
                </asp:Label><br />
                CompanyName:
                <asp:TextBox Text='<%# Bind("CompanyName") %>' Runat="server"
                     ID="CompanyNameTextBox"></asp:TextBox><br />
                ContactName:
                <asp:TextBox Text='<%# Bind("ContactName") %>' Runat="server"
                     ID="ContactNameTextBox"></asp:TextBox><br />
                ContactTitle:
                <asp:TextBox Text='<%# Bind("ContactTitle") %>' Runat="server"
                    ID="ContactTitleTextBox"></asp:TextBox><br />
                Address:
                <asp:TextBox Text='<%# Bind("Address") %>' Runat="server"
                     ID="AddressTextBox"></asp:TextBox><br />
                City:
                <asp:TextBox Text='<%# Bind("City") %>' Runat="server"
                     ID="CityTextBox"></asp:TextBox><br />
                Region:
                <asp:TextBox Text='<%# Bind("Region") %>' Runat="server"
                     ID="RegionTextBox"></asp:TextBox><br />
                PostalCode:
                <asp:TextBox Text='<%# Bind("PostalCode") %>' Runat="server"
                     ID="PostalCodeTextBox"></asp:TextBox><br />
                Country:
                <asp:TextBox Text='<%# Bind("Country") %>' Runat="server"
                     ID="CountryTextBox"></asp:TextBox><br />
                Phone:
                <asp:TextBox Text='<%# Bind("Phone") %>' Runat="server"
                     ID="PhoneTextBox"></asp:TextBox><br />
                Fax:
                <asp:TextBox Text='<%# Bind("Fax") %>' Runat="server"
                     ID="FaxTextBox"></asp:TextBox><br />
                <br />
                <asp:Button ID="Button2" Runat="server" Text="Button"
                     CommandName="update" />
                <asp:Button ID="Button3" Runat="server" Text="Button"
                     CommandName="cancel" />
            </EditItemTemplate>
            <ItemTemplate>
                <table width="100%">
                    <tr>
                        <td style="width: 439px">
                        <b>
                        <span style="font-size: 14pt">Customer Information</span>
                        </b>
                        </td>
                        <td style="width: 439px" align="right">
                            CustomerID:
                            <asp:Label ID="CustomerIDLabel" Runat="server"
                                 Text='<%# Bind("CustomerID") %>'>
                                 </asp:Label></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            CompanyName:
                            <asp:Label ID="CompanyNameLabel" Runat="server"
                                 Text='<%# Bind("CompanyName") %>'>
                                 </asp:Label><br />
                            ContactName:
                            <asp:Label ID="ContactNameLabel" Runat="server"
                                 Text='<%# Bind("ContactName") %>'>
                                 </asp:Label><br />
                            ContactTitle:
                            <asp:Label ID="ContactTitleLabel" Runat="server"
                                 Text='<%# Bind("ContactTitle") %>'>
                                 </asp:Label><br />
                            <br />
                            <table width="100%"><tr>
                                    <td colspan="3">
                                        <asp:Label ID="AddressLabel" Runat="server"
                                             Text='<%# Bind("Address") %>'>
                                             </asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 100px">
                                        <asp:Label ID="CityLabel" Runat="server"
                                             Text='<%# Bind("City") %>'>
                                             </asp:Label></td>
                                    <td style="width: 100px">
                                        <asp:Label ID="RegionLabel" Runat="server"
                                             Text='<%# Bind("Region") %>'>
                                             </asp:Label></td>
                                    <td style="width: 100px">
                                        <asp:Label ID="PostalCodeLabel"
                                            Runat="server"
                                            Text='<%# Bind("PostalCode") %>'>
                                            </asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px" valign="top">
                                        <asp:Label ID="CountryLabel" Runat="server"
                                             Text='<%# Bind("Country") %>'>
                                             </asp:Label></td>
                                    <td style="width: 100px"></td>
                                    <td style="width: 100px">
                                        Phone:
                                        <asp:Label ID="PhoneLabel" Runat="server"
                                                   Text='<%# Bind("Phone") %>'>
                                                   </asp:Label><br />
                                        Fax:
                                        <asp:Label ID="FaxLabel" Runat="server"
                                             Text='<%# Bind("Fax") %>'>
                                             </asp:Label><br />
                                    </td>
                                </tr></table>
                            <asp:Button ID="Button1" Runat="server"
                                 Text="Button" CommandName="edit" />
                        </td>
                    </tr></table>
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
             SelectCommand="SELECT * FROM [Customers]"
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>">

        </asp:SqlDataSource>
 
    </div>
    </form>
</body>
</html>
