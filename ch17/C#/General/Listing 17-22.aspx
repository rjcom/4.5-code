<%@ Page Language="C#" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Menu Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        <asp:Menu ID="Menu1" runat="server" DataSourceID="SiteMapDataSource1"
            DynamicBottomSeparatorImageUrl="Images/myDivider.png">
        </asp:Menu>
    </form>
</body>
</html>
