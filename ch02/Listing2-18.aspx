<%@ Page Language="C#" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="SpringStyles.css" rel="stylesheet" type="text/css" />
    <style>
        .search
        {
            color:White;
            font-weight:bolder;
            background-color:Green;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1"
            CssClass="search" runat="server" Text="Button" />
    </form>
</body>
</html>