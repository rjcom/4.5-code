<%@ Page Language="C#" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Using the TreeView Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        </asp:SiteMapPath>
        <br />
        <p>
            <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1"
                ImageSet="Msdn" NodeIndent="10">
                <ParentNodeStyle Font-Bold="False" />
                <HoverNodeStyle BackColor="#CCCCCC" BorderColor="#888888" BorderStyle="Solid"
                    Font-Underline="True" />
                <SelectedNodeStyle BackColor="White" BorderColor="#888888" BorderStyle="Solid"
                    BorderWidth="1px" Font-Underline="False" HorizontalPadding="3px"
                    VerticalPadding="1px" />
                <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black"
                    HorizontalPadding="5px" NodeSpacing="1px" VerticalPadding="2px" />
            </asp:TreeView>
            <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
        </p>
    </form>
</body>
</html>
