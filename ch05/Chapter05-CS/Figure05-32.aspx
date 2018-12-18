<%@ Page Language="C#" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>BulletedList Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="float: left; width: 150px;">
            <b>Numbered</b>
            <asp:BulletedList ID="Bulletedlist1" BulletStyle="Numbered" runat="server">
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>Finland</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Sweden</asp:ListItem>
                <asp:ListItem>Estonia</asp:ListItem>
            </asp:BulletedList>
        </div>
        <div style="float: left; width: 150px;">
            <b>LowerAlpha</b>
            <asp:BulletedList ID="Bulletedlist2" BulletStyle="LowerAlpha" runat="server">
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>Finland</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Sweden</asp:ListItem>
                <asp:ListItem>Estonia</asp:ListItem>
            </asp:BulletedList>
        </div>
        <div style="float: left; width: 150px;">
            <b>UpperAlpha</b>
            <asp:BulletedList ID="Bulletedlist3" BulletStyle="UpperAlpha" runat="server">
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>Finland</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Sweden</asp:ListItem>
                <asp:ListItem>Estonia</asp:ListItem>
            </asp:BulletedList>
        </div>
        <div style="float: left; width: 150px;">
            <b>LowerRoman</b>
            <asp:BulletedList ID="Bulletedlist4" BulletStyle="LowerRoman" runat="server">
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>Finland</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Sweden</asp:ListItem>
                <asp:ListItem>Estonia</asp:ListItem>
            </asp:BulletedList>
        </div>
        <div style="float: left; width: 150px;">
            <b>UpperRoman</b>
            <asp:BulletedList ID="Bulletedlist5" BulletStyle="UpperRoman" runat="server">
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>Finland</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Sweden</asp:ListItem>
                <asp:ListItem>Estonia</asp:ListItem>
            </asp:BulletedList>
        </div>
        <div style="float: left; width: 150px;">
            <b>Disc</b>
            <asp:BulletedList ID="Bulletedlist6" BulletStyle="Disc" runat="server">
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>Finland</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Sweden</asp:ListItem>
                <asp:ListItem>Estonia</asp:ListItem>
            </asp:BulletedList>
        </div>
        <div style="float: left; width: 150px;">
            <b>Circle</b>
            <asp:BulletedList ID="Bulletedlist7" BulletStyle="Circle" runat="server">
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>Finland</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Sweden</asp:ListItem>
                <asp:ListItem>Estonia</asp:ListItem>
            </asp:BulletedList>
        </div>
        <div style="float: left; width: 150px;">
            <b>Square</b>
            <asp:BulletedList ID="Bulletedlist8" BulletStyle="Square" runat="server">
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>Finland</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Sweden</asp:ListItem>
                <asp:ListItem>Estonia</asp:ListItem>
            </asp:BulletedList>
        </div>
        <div style="float: left; width: 150px;">
            <b>NotSet</b>
            <asp:BulletedList ID="Bulletedlist9" BulletStyle="Circle" runat="server">
                <asp:ListItem>United States</asp:ListItem>
                <asp:ListItem>United Kingdom</asp:ListItem>
                <asp:ListItem>Finland</asp:ListItem>
                <asp:ListItem>Russia</asp:ListItem>
                <asp:ListItem>Sweden</asp:ListItem>
                <asp:ListItem>Estonia</asp:ListItem>
            </asp:BulletedList>
        </div>
    </form>
</body>
</html>