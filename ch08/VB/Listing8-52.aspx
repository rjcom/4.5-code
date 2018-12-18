<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
    <HeaderTemplate>
        <table>
    </HeaderTemplate>
    <ItemTemplate>
       <tr>
          <td>
              <%# Container.DataItem("ProductID")%><BR/>
              <%# Container.DataItem("ProductName")%><BR/>
              <%# DataBinder.Eval(
                                          Container.DataItem, "UnitPrice", "{0:c}")%><br/>
           </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice] FROM [Products]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
