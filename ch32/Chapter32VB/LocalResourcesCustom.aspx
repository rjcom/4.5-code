<%@ Page Language="vb" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<script runat="server">    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Label2.Text = GetLocalResourceObject("Label2Answer").ToString() & " " & TextBox1.Text
    End Sub
</script>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Local Resources</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="What is your name?" meta:resourcekey="Label1Resource1"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit Name" meta:resourcekey="Button1Resource1" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" meta:resourcekey="Label2Resource1"></asp:Label>
    </div>
    </form>
</body>
</html>
