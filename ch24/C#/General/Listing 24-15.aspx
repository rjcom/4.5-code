<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>DropShadowExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:DropShadowExtender ID="DropShadowExtender1" runat="server" 
         TargetControlID="Panel1" Rounded="True">
        </asp:DropShadowExtender>
        <asp:Panel ID="Panel1" runat="server" BackColor="Orange" Width="300" 
         HorizontalAlign="Center">
            <asp:Login ID="Login1" runat="server">
            </asp:Login>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
