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
    
    protected void Button3_Click(object sender, System.EventArgs e)
    {
       TreeNode myNode = new TreeNode();
       myNode.Text = TextBox1.Text;
       myNode.NavigateUrl = TextBox2.Text;
       TreeView1.FindNode("Home/Finance/Markets").ChildNodes.Add(myNode);
    }

</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>TreeView Control</title>
</head>
<body>
    <form id="Form1" runat="server">
        <p>
            <asp:Button ID="Button1" Runat="server" Text="Expand Nodes" 
             OnClick="Button1_Click" />
            <asp:Button ID="Button2" Runat="server" Text="Collapse Nodes" 
             OnClick="Button2_Click" /></p>
        <p>
            <strong>Text of new node:</strong>
            <asp:TextBox ID="TextBox1" runat="server">
            </asp:TextBox>
        </p>
        <p>
            <strong>Desination URL of new node:</strong>
            <asp:TextBox ID="TextBox2" Runat="server">
            </asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button3" Runat="server" Text="Add New Node" 
             OnClick="Button3_Click" />
        </p>
        <p>
        <asp:TreeView ID="TreeView1" runat="server" 
         DataSourceId="SiteMapDataSource1">
        </asp:TreeView></p>
        <p>
        <asp:SiteMapDataSource ID="SiteMapDataSource1" Runat="server" /></p>
    </form>
</body>
</html>
