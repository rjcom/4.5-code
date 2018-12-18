<%@ Page Language="C#" %>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "This button was clicked on " + DateTime.Now.ToString();
    }
</script>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>UpdatePanel Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server"
                        Text="Click to initiate async request"
                        OnClick="Button1_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
