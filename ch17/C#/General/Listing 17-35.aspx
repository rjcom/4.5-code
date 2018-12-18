<%@ Page Language="C#" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Main Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Login ID="Login1" runat="server">
        </asp:Login>
        <br />
        <asp:TreeView ID="TreeView1" runat="server" 
         DataSourceID="SiteMapDataSource1" ShowLines="True">
        </asp:TreeView>
        <br />
        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />    
    </div>
    </form>
</body>
</html>
