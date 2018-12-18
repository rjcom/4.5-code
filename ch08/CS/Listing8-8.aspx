<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:XmlDataSource ID="XmlDataSource1" Runat="server"
    DataFile="http://msdn.microsoft.com/rss.xml"
    XPath="rss/channel/item" />
     <asp:TreeView DataSourceID="XmlDataSource1" runat="server" />
    </div>
    </form>
</body>
</html>
