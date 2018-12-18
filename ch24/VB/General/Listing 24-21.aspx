<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>MaskedEditExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:MaskedEditExtender ID="MaskedEditExtender1" runat="server" 
         TargetControlID="TextBox1" MaskType="Number" Mask="999">
        </asp:MaskedEditExtender>        
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:MaskedEditValidator ID="MaskedEditValidator1" runat="server" 
         ControlExtender="MaskedEditExtender1" ControlToValidate="TextBox1" 
         IsValidEmpty="False" EmptyValueMessage="A three digit number is required!" 
         Display="Dynamic"></asp:MaskedEditValidator>
    </div>
    </form>
</body>
</html>
