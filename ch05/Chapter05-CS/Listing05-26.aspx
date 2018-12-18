<%@ Page Language="C#" %>
<%@ Import Namespace="System.Xml.Xsl" %>
<%@ Import Namespace="System.Xml.XPath" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(Object sender, EventArgs e)
    {
        XPathDocument MyXmlDoc = new XPathDocument(Server.MapPath("Food.xml"));
        XslTransform MyXsltDoc = new XslTransform();
        MyXsltDoc.Load(Server.MapPath("FoodTemplate.xslt"));
        Xml1.XPathNavigator = MyXmlDoc.CreateNavigator();
        Xml1.Transform = MyXsltDoc;
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Xml ID="Xml1" runat="server" />
    </div>
    </form>
</body>
</html>
