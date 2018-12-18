<%@ Page Language="C#" %>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Label2.Text = DateTime.Now.ToString();
    }
</script>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>My ASP.NET AJAX Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Label ID="Label1" runat="server"></asp:Label>    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Click to get machine time" 
            onclick="Button1_Click" />
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" 
                 Text="Click to get machine time using AJAX" 
                 onclick="Button2_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
