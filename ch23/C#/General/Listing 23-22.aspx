<%@ Page Language="C#" %>

<%@ Register Assembly="ScriptReferenceProfiler" Namespace="ScriptReferenceProfiler" TagPrefix="cc1" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = "Hello " + TextBox1.Text + ".<br />"
            + "Today is " + TextBox2.Text;
    }

</script>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Script Combining</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    What is your name?<br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    What is today&#39;s date?<br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBox2_CalendarExtender" runat="server"
                        Enabled="True" TargetControlID="TextBox2">
                    </asp:CalendarExtender>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Submit"
                        OnClick="Button1_Click" />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
            <cc1:ScriptReferenceProfiler ID="ScriptReferenceProfiler1" runat="server" />
        </div>
    </form>
</body>
</html>
