<%@ Page Language="VB" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Using the SiteMapPath Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SiteMapPath ID="SiteMapPath1" Runat="server">
            <PathSeparatorTemplate>
                <asp:Image ID="Image1" Runat="server" ImageUrl="divider.gif" />
            </PathSeparatorTemplate>            
        </asp:SiteMapPath>
   </form>
</body>
</html>
