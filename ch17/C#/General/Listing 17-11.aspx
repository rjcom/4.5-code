<%@ Page Language="C#" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Latest Hardware</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TreeView ID="TreeView1" runat="server" Font-Underline="False"
            DataSourceID="XmlDataSource1"
            CollapseImageUrl="Images/CollapseImage.png"
            ExpandImageUrl="Images/ExpandImage.png"
            LeafNodeStyle-ImageUrl="Images/LeafImage.png">
            <DataBindings>
                <asp:TreeNodeBinding DataMember="Hardware" Text="Computer Hardware" />
                <asp:TreeNodeBinding DataMember="Item" TextField="Category" />
                <asp:TreeNodeBinding DataMember="Option" TextField="Choice" />
            </DataBindings>
        </asp:TreeView>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server"
            DataFile="Hardware.xml"></asp:XmlDataSource>
    </form>
</body>
</html>

