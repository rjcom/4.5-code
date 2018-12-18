<%@ Page Language="C#" %>

<script runat="server">    
    protected void Button1_Click(object sender, System.EventArgs e)
    {
        if (TreeView1.CheckedNodes.Count > 0)
        {
            Label1.Text = "We are sending you information on:<p>";
            foreach (TreeNode node in TreeView1.CheckedNodes)
            {
                Label1.Text += node.Text + " " + node.Parent.Text + "<br>";
            }
        }
        else
        {
            Label1.Text = "You didn't select anything. Sorry!";
        }
    }    
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Latest Hardware</title>
</head>
<body>
    <form id="Form1" runat="server">
    Please select the items you are interested in:
        <p>
        <asp:TreeView ID="TreeView1" Runat="server" Font-Underline="False" 
         DataSourceID="XmlDataSource1" ShowCheckBoxes="Leaf">
            <DataBindings>
                <asp:TreeNodeBinding DataMember="Hardware"
                 Text="Computer Hardware" />
                <asp:TreeNodeBinding DataMember="Item" TextField="Category" />
                <asp:TreeNodeBinding DataMember="Option" TextField="Choice" />
            </DataBindings>
        </asp:TreeView>
        <p>
        <asp:Button ID="Button1" Runat="server" Text="Submit Choices" 
         OnClick="Button1_Click" />
        </p>
        <asp:XmlDataSource ID="XmlDataSource1" Runat="server"     
         DataFile="Hardware.xml">
        </asp:XmlDataSource>
       </p>
       <asp:Label ID="Label1" Runat="Server" />
    </form>
</body>
</html>
