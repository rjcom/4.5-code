<%@ Page Language="C#" %>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "Label1 was populated on " + DateTime.Now;
        Label2.Text = "Label2 was populated on " + DateTime.Now;
    }
</script>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>Multiple UpdatePanel Controls</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button1" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
            <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </ContentTemplate>
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
