<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<script runat="server">
    Protected  Sub Calendar1_SelectionChanged(ByVal sender As Object, 
      ByVal e As EventArgs)
        Label1.Text = "The date selected is " & 
           Calendar1.SelectedDate.ToLongDateString()
</script>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>UpdatePanelAnimationExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:UpdatePanelAnimationExtender ID="UpdatePanelAnimationExtender1" 
         runat="server" TargetControlID="UpdatePanel1">
            <Animations>
                <OnUpdated>
                    <Sequence>
                        <Color PropertyKey="background" StartValue="#999966" 
                         EndValue="#FFFFFF" Duration="5.0" />
                    </Sequence>
                </OnUpdated>
            </Animations>
        </asp:UpdatePanelAnimationExtender>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server"></asp:Label><br />
                <asp:Calendar ID="Calendar1" runat="server" 
                    onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
