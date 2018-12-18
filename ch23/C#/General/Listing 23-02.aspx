<%@ Page Language="C#" %>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToString();
    }
</script>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>My Normal ASP.NET Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server"></asp:Label>    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Click to get machine time" 
            onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
