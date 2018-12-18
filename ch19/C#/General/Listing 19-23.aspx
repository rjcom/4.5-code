<%@ Page Language="C#" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Getting Your Password</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:PasswordRecovery ID="PasswordRecovery1" Runat="server">
            <MailDefinition From="wenz@example.com">
            </MailDefinition>
        </asp:PasswordRecovery>
    </form>
</body>
</html>
