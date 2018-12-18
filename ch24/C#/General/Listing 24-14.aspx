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
         TargetControlID="Image1">
        </asp:DropShadowExtender>
        <asp:Image ID="Image1" runat="server" ImageUrl="Images/ToolkitLogo.jpg" />
    </div>
    </form>
</body>
</html>
