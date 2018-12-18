<%@ Page Language="vb" %>
<script runat="server">
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Literal1.Text = "Hello " & TextBox1.Text
    End Sub
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Simple Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            What is your name?<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Submit" 
                OnClick="Button1_Click" />
        </div>
        <div>
            <asp:Literal ID="Literal1" runat="server" />
        </div>
    </form>
</body>
</html>
