<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>RoundedCornersExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:RoundedCornersExtender ID="RoundedCornersExtender1" runat="server" 
         TargetControlID="Panel1">
        </asp:RoundedCornersExtender>
        <asp:Panel ID="Panel1" runat="server" Width="250px" 
         HorizontalAlign="Center" BackColor="Orange">
            <asp:Login ID="Login1" runat="server">
            </asp:Login>
        </asp:Panel>
    </div>
    </form>
</body>
</html>
