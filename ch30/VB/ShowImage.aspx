<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ShowImage.aspx.vb" Inherits="VB.ShowImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Generic Image Viewer</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img src="imghandler.ashx" alt="Dynamic Image" />
    </div>
    </form>
</body>
</html>
