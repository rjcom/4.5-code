<%@ Page Language="VB" %>

<script runat="server" language="vb">    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Label1.Text = SiteMap.CurrentNode.Description & "<br>" & 
            SiteMap.CurrentNode.HasChildNodes & "<br>" & 
            SiteMap.CurrentNode.NextSibling.ToString() & "<br>" & 
            SiteMap.CurrentNode.ParentNode.ToString() & "<br>" & 
            SiteMap.CurrentNode.PreviousSibling.ToString() & "<br>" & 
            SiteMap.CurrentNode.RootNode.ToString() & "<br>" & 
            SiteMap.CurrentNode.Title & "<br>" & 
            SiteMap.CurrentNode.Url
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>SiteMapDataSource</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" Runat="server"></asp:Label>
    </form>
</body>
