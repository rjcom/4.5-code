<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>ColorPickerExtender</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <br />
        Pick your favorite color:<br />
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:ColorPickerExtender ID="ColorPickerExtender1" 
         runat="server" TargetControlID="TextBox1">
        </asp:ColorPickerExtender>
    </div>
    </form>
</body>
</html>
