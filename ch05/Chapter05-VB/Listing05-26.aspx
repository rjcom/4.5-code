<%@ Page Language="VB" %>
<%@ Import Namespace="System.Xml.Xsl" %>
<%@ Import Namespace="System.Xml.XPath" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim MyXmlDoc = New XPathDocument(Server.MapPath("Food.xml"))
        Dim MyXsltDoc = New XslTransform()
        MyXsltDoc.Load(Server.MapPath("FoodTemplate.xslt"))
        Xml1.XPathNavigator = MyXmlDoc.CreateNavigator()
        Xml1.Transform = MyXsltDoc
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Xml ID="Xml1" runat="server" />
    </form>
</body>
</html>