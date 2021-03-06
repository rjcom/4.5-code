﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(Object sender, EventArgs e)
    {
        if (Page.IsValid)
            Label1.Text = "Passwords match";
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CompareFieldValidator</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Password<br />
            <asp:TextBox ID="TextBox1" runat="server"
                TextMode="Password"></asp:TextBox>
            &nbsp;
            <asp:CompareValidator ID="CompareValidator1"
                runat="server" Text="Passwords do not match!"
                ControlToValidate="TextBox2"
                ControlToCompare="TextBox1"></asp:CompareValidator>
        </p>
        <p>
            Confirm Password<br />
            <asp:TextBox ID="TextBox2" runat="server"
                TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" OnClick="Button1_Click"
                runat="server" Text="Login"></asp:Button>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>