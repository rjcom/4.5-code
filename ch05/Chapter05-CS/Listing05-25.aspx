<%@ Page Language="C#" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:Xml ID="Xml1" runat="server" DocumentSource="Food.xml"
    TransformSource="FoodTemplate.xslt"></asp:Xml>
    </div>
    </form>
</body>
</html>