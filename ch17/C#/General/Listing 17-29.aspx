<%@ Page Language="C#" %>
<!-- run from a file called Markets.aspx -->
<script runat="server">    
    protected void Page_Load(object sender, System.EventArgs e)
    {
        Hyperlink1.Text = SiteMap.CurrentNode.ParentNode.ToString();
        Hyperlink1.NavigateUrl = SiteMap.CurrentNode.ParentNode.Url;
        
        Hyperlink2.Text = SiteMap.CurrentNode.PreviousSibling.ToString();
        Hyperlink2.NavigateUrl = SiteMap.CurrentNode.PreviousSibling.Url;
        
        Hyperlink3.Text = SiteMap.CurrentNode.NextSibling.ToString();
        Hyperlink3.NavigateUrl = SiteMap.CurrentNode.NextSibling.Url;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>SiteMapDataSource</title>
</head>
<body>
    <form id="form1" runat="server">
        Move Up:
        <asp:Hyperlink ID="Hyperlink1" Runat="server"></asp:Hyperlink><br />
        <-- <asp:Hyperlink ID="Hyperlink2" Runat="server"></asp:Hyperlink> | 
        <asp:Hyperlink ID="Hyperlink3" Runat="server"></asp:Hyperlink> -->        
    </form>
</body>
</html>
