<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>ToggleButtonExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:MutuallyExclusiveCheckBoxExtender 
         ID="MutuallyExclusiveCheckBoxExtender1" runat="server" Key="MyCheckBoxes" 
         TargetControlID="CheckBox1">
        </asp:MutuallyExclusiveCheckBoxExtender>
        <asp:MutuallyExclusiveCheckBoxExtender 
         ID="MutuallyExclusiveCheckBoxExtender2" runat="server" Key="MyCheckBoxes" 
         TargetControlID="CheckBox2">
        </asp:MutuallyExclusiveCheckBoxExtender>
        <asp:ToggleButtonExtender ID="ToggleButtonExtender1" runat="server" 
         TargetControlID="CheckBox1" UncheckedImageUrl="Images/Unchecked.gif" 
         CheckedImageUrl="Images/Checked.gif" CheckedImageAlternateText="Checked" 
         UncheckedImageAlternateText="Not Checked" ImageWidth="25" 
         ImageHeight="25">
        </asp:ToggleButtonExtender>
        <asp:CheckBox ID="CheckBox1" runat="server" Text="&nbsp;Option One" />
        <asp:ToggleButtonExtender ID="ToggleButtonExtender2" runat="server" 
         TargetControlID="CheckBox2" UncheckedImageUrl="Images/Unchecked.gif" 
         CheckedImageUrl="Images/Checked.gif" CheckedImageAlternateText="Checked" 
         UncheckedImageAlternateText="Not Checked" ImageWidth="25" 
         ImageHeight="25">
        </asp:ToggleButtonExtender>
        <asp:CheckBox ID="CheckBox2" runat="server" Text="&nbsp;Option Two" />
    </div>
    </form>
</body>
</html>
