<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Using the TreeView control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TreeView ID="TreeView1" Runat="server"
             DataSourceID="SiteMapDataSource1" />
        <asp:SiteMapDataSource ID="SiteMapDataSource1" Runat="server" />
    </div>
    </form>
</body>
</html>
