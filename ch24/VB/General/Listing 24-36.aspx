<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>ValidatorCalloutExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" 
            TargetControlID="RegularExpressionValidator1">
        </asp:ValidatorCalloutExtender>        
        Email Address:&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
         runat="server" 
         ErrorMessage="You must enter an email address" Display="None" 
         ControlToValidate="TextBox1" 
         ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
        </asp:RegularExpressionValidator><br />
        <asp:Button ID="Button1" runat="server" Text="Submit" />
    </div>
    </form>
</body>
</html>
