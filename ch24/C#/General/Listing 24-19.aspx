<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>HoverMenuExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <LayoutTemplate>
                    <table>
                        <tr>
                            <th></th>
                            <th>ProductID</th>
                            <th>ProductName</th>
                            <th>SupplierID</th>
                            <th>CategoryID</th>
                            <th>QuantityPerUnit</th>
                        </tr>
                        <asp:PlaceHolder ID="itemPlaceholder" runat="server" />
                    </table>
                </LayoutTemplate>
                <ItemTemplate>
                    <tr style="background-color: #DCDCDC; color: #000000;">
                        <td>
                            <asp:HoverMenuExtender ID="HoverMenuExtender1" runat="server"
                                TargetControlID="ProductNameLabel" PopupControlID="Panel1"
                                PopDelay="25" OffsetX="-50">
                            </asp:HoverMenuExtender>
                            <asp:Panel ID="Panel1" runat="server" Height="50px"
                                Width="125px">
                                <asp:Button ID="EditButton" runat="server"
                                    CommandName="Edit" Text="Edit" />
                            </asp:Panel>
                        </td>
                        <td>
                            <asp:Label ID="ProductIDLabel" runat="server"
                                Text='<%# Eval("ProductID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="ProductNameLabel" runat="server"
                                Text='<%# Eval("ProductName") %>' />
                        </td>
                        <td>
                            <asp:Label ID="SuppliedIDLabel" runat="server"
                                Text='<%# Eval("SupplierID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="CategoryIDLabel" runat="server"
                                Text='<%# Eval("CategoryID") %>' />
                        </td>
                        <td>
                            <asp:Label ID="QuantityPerUnitLabel" runat="server"
                                Text='<%# Eval("QuantityPerUnit") %>' />
                        </td>

                    </tr>
                </ItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\NORTHWND.MDF;Integrated Security=True;User Instance=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
