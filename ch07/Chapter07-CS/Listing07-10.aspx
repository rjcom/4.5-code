<%@ Page Language="C#" %>
<%@ Register Assembly="CSharpServerControl1" Namespace="CSharpServerControl1" TagPrefix="cc1" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Adding a Custom Web Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <cc1:ServerControl1 ID="ServerControl1" runat="server" Text="Hello World!" />
    </div>
    </form>
</body>
</html>