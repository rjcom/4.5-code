<%@ Page Language="C#" Trace="true" %>
<%@ Register src="Listing04-05.ascx" tagname="MyUserControl" tagprefix="muc" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Working with Control IDs</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <muc:MyUserControl ID="MyUserControl1" runat="server" />
    </div>
    </form>
</body>
</html>