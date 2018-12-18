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
    <title>UpdatePanel</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server"
                Text="Click to initiate async request"
                OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
