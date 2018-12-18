<%@ Page Language="VB" %>

<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object,
       ByVal e As System.EventArgs)
        Label1.Text = DateTime.Now.ToString()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object,
       ByVal e As System.EventArgs)
        Label2.Text = DateTime.Now.ToString()
    End Sub
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
                OnClick="Button1_Click" />
            <br />
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server"
                        Text="Click to get machine time using AJAX"
                        OnClick="Button2_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
