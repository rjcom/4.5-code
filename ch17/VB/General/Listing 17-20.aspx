<%@ Page Language="VB" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Menu Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SiteMapDataSource ID="SiteMapDataSource1" Runat="server" />
        <asp:Menu ID="Menu1" Runat="server" DataSourceID="SiteMapDataSource1"
         Orientation="Horizontal">
        </asp:Menu>
    </form>
</body>
</html>
