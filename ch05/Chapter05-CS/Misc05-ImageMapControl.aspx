<%@ Page Language="C#" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ImageMap Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/Images/kids.jpg" HotSpotMode="Navigate">
            <asp:CircleHotSpot AlternateText="Addison" NavigateUrl="Addison.aspx" Radius="26" X="145" Y="372" />
            <asp:CircleHotSpot AlternateText="Brayden" NavigateUrl="Brayden.aspx" Radius="20" X="181" Y="314" />
            <asp:CircleHotSpot AlternateText="Arianna" NavigateUrl="Arianna.aspx" Radius="28" X="245" Y="344" />
        </asp:ImageMap>
    </form>
</body>
</html>