<%@ Page Language="VB" AutoEventWireup="true" CodeFile="NoBot.aspx.vb" Inherits="NoBot" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>NoBot Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:NoBot ID="NoBot1" runat="server" CutoffMaximumInstances="3" 
            CutoffWindowSeconds="15" ResponseMinimumDelaySeconds="10" 
            OnGenerateChallengeAndResponse="NoBot1_GenerateChallengeAndResponse" />
        <asp:Login ID="Login1" runat="server">
        </asp:Login>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
