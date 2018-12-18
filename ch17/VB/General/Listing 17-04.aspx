<%@ Page Language="VB" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Using the SiteMapPath Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SiteMapPath ID="Sitemappath1" Runat="server" PathSeparator=" | ">
           <PathSeparatorStyle Font-Bold="true" Font-Names="Verdana" ForeColor="#663333" 
            BackColor="#cccc66"></PathSeparatorStyle>
        </asp:SiteMapPath>
    </form>
</body>
</html>
