<%@ Page Language="C#" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BulletedList Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:BulletedList ID="BulletedList1" runat="server"
            DataSourceID="XmlDataSource1" DataTextField="Title">
        </asp:BulletedList>
        <asp:XmlDataSource ID="XmlDataSource1" runat="server"
            DataFile="~/Listing05-31.xml" XPath="Books/Book"></asp:XmlDataSource>
    </form>
</body>
</html>