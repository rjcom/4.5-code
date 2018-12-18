﻿<%@ Page Language="C#" %>
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
            <asp:CompareValidator ID="CompareValidator1" runat="server"
                Text="You must at least 18 to join"
                ControlToValidate="TextBox1" Type="Integer"
                Operator="GreaterThanEqual" ValueToCompare="18"></asp:CompareValidator>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Login"></asp:Button>
            </p>
        </div>
    </form>
</body>
</html>