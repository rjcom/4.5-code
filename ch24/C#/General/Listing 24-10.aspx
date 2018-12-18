<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>ConfirmButtonExtender</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" 
         TargetControlID="Button1"
         ConfirmText="Are you sure you wanted to click this button?">
        </asp:ConfirmButtonExtender>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
