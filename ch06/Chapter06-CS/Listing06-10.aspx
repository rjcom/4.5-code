<%@ Page Language="C#" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CompareFieldValidator</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Age:
            <asp:TextBox ID="TextBox1" runat="server" MaxLength="3">
            </asp:TextBox>
            &nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server"
                ControlToValidate="TextBox1" Type="Integer"
                Text="You must be between 30 and 40"
                MaximumValue="40" MinimumValue="30"></asp:RangeValidator>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Login"></asp:Button>
            </p>
        </div>
    </form>
</body>
</html>