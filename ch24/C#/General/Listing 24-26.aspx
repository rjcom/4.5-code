<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<script runat="server">
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        PopupControlExtender1.Commit(Calendar1.SelectedDate.ToShortDateString());
    }
</script>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>PopupControlExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:PopupControlExtender ID="PopupControlExtender1" runat="server" 
         TargetControlID="TextBox1" PopupControlID="UpdatePanel1" OffsetY="25">
        </asp:PopupControlExtender>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                 BorderColor="White" BorderWidth="1px" Font-Names="Verdana" 
                 Font-Size="9pt" ForeColor="Black" Height="190px" 
                 NextPrevFormat="FullMonth" Width="350px" 
                 OnSelectionChanged="Calendar1_SelectionChanged">
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" 
                     ForeColor="#333333" VerticalAlign="Bottom" />
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <TitleStyle BackColor="White" BorderColor="Black" 
                     BorderWidth="4px" Font-Bold="True" Font-Size="12pt" 
                     ForeColor="#333399" />
                </asp:Calendar>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
