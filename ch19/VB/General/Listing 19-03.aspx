<%@ Page Language="VB" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Creating Users</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:CreateUserWizard ID="CreateUserWizard1" Runat="server" 
         BorderWidth="1px" BorderColor="#FFDFAD" BorderStyle="Solid" 
         BackColor="#FFFBD6" Font-Names="Verdana">
            <TitleTextStyle Font-Bold="True" BackColor="#990000" 
             ForeColor="White"></TitleTextStyle>
        </asp:CreateUserWizard>
    </form>
</body>
</html>
