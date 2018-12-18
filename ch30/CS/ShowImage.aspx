<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowImage.aspx.cs" Inherits="CS.ShowImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
