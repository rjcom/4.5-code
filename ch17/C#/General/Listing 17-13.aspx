<%@ Page Language="C#" %>

<script runat="server">    
    protected void TreeView1_DataBound(object sender, System.EventArgs e)
    {
        TreeView1.CollapseAll();
        TreeView1.FindNode("Home").Expand();
        TreeView1.FindNode("Home/Finance").Expand();
        TreeView1.FindNode("Home/Finance/Markets").Expand();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>TreeView Control</title>
</head>
<body>
    <form id="Form1" runat="server">
        <p>
            <asp:TreeView ID="TreeView1" runat="server"
                DataSourceID="SiteMapDataSource1"
                OnDataBound="TreeView1_DataBound">
            </asp:TreeView>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </p>
    </form>
</body>
</html>
