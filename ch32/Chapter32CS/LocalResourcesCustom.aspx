﻿<%@ Page Language="C#" culture="auto" meta:resourcekey="PageResource1" uiculture="auto"%>

<script runat="server">    
    protected void Button1_Click(object sender, System.EventArgs e)
    {
        Label2.Text = GetLocalResourceObject("Label2Answer").ToString() + " " + TextBox1.Text;
    }
</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Local Resources</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="What is your name?" meta:resourcekey="Label1Resource1"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit Name" OnClick="Button1_Click" meta:resourcekey="Button1Resource1" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" meta:resourcekey="Label2Resource1"></asp:Label>
    </div>
    </form>
</body>
</html>