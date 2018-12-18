<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub ImageMap1_Click(sender As Object, e As ImageMapEventArgs)
        Response.Write("You selected: " & e.PostBackValue)
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ImageMap Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ImageMap ID="ImageMap1" runat="server" HotSpotMode="PostBack" ImageUrl="~/Images/kids.jpg" OnClick="ImageMap1_Click">
            <asp:CircleHotSpot PostBackValue="Addison" Radius="26" X="145" Y="372" />
            <asp:CircleHotSpot PostBackValue="Brayden" Radius="20" X="181" Y="314" />
            <asp:CircleHotSpot PostBackValue="Arianna" Radius="28" X="245" Y="344" />
        </asp:ImageMap>    
    </form>
</body>
</html>