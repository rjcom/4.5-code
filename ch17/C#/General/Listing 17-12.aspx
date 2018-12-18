<%@ Page Language="C#" %>

<script runat="server">    
    protected void Button1_Click(object sender, System.EventArgs e)
    {
        TreeView1.ExpandAll();
    }
    
    protected void Button2_Click(object sender, System.EventArgs e)
    {
        TreeView1.CollapseAll();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>TreeView Control</title>
</head>
<body>
    <form id="Form1" runat="server">
        <p>
            <asp:Button ID="Button1" Runat="server" Text="Expand Nodes" 
             OnClick="Button1_Click" />
            <asp:Button ID="Button2" Runat="server" Text="Collapse Nodes" 
             OnClick="Button2_Click" />
            <br />
            <br />
        <asp:TreeView ID="TreeView1" Runat="server" 
         DataSourceId="SiteMapDataSource1">
        </asp:TreeView>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" Runat="server" /></p>
    </form>
</body>
</html>
