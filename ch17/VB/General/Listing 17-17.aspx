<%@ Page Language="VB" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Menu Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SiteMapDataSource ID="SiteMapDataSource1" Runat="server" />
        <asp:Menu ID="Menu1" Runat="server" DataSourceID="SiteMapDataSource1"
         BackColor="#B5C7DE" ForeColor="#284E98" 
         Font-Names="Verdana" Font-Size="0.8em" StaticSubMenuIndent="10px" 
         DynamicHorizontalOffset="2">
           <StaticSelectedStyle BackColor="#507CD1"></StaticSelectedStyle>
           <StaticMenuItemStyle HorizontalPadding="5" 
            VerticalPadding="2"></StaticMenuItemStyle>
           <DynamicMenuStyle BackColor="#B5C7DE"></DynamicMenuStyle>
           <DynamicSelectedStyle BackColor="#507CD1"></DynamicSelectedStyle>
           <DynamicMenuItemStyle HorizontalPadding="5" 
            VerticalPadding="2"></DynamicMenuItemStyle>
           <DynamicHoverStyle ForeColor="White" Font-Bold="True" 
            BackColor="#284E98"></DynamicHoverStyle>
           <StaticHoverStyle ForeColor="White" Font-Bold="True" 
            BackColor="#284E98"></StaticHoverStyle>
        </asp:Menu>
    </form>
</body>
</html>
