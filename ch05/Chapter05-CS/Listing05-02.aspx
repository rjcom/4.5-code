<%@ Page Language="C#" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Label Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:Label ID="Label1" runat="server" AccessKey="N"
                AssociatedControlID="Textbox1">User<u>n</u>ame</asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" AccessKey="P"
                AssociatedControlID="Textbox2"><u>P</u>assword</asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" />
        </p>
        <p>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="200" Height="80" />
        </p>
    </form>
</body>
</html>