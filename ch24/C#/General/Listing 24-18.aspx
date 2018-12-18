<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>FilteredTextBoxExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" 
         TargetControlID="TextBox1" FilterType="Numbers">
        </asp:FilteredTextBoxExtender>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
