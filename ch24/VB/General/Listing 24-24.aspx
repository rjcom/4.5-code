<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>NumericUpDownExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
            </asp:ToolkitScriptManager>
            <asp:NumericUpDownExtender ID="NumericUpDownExtender1" runat="server"
                TargetControlID="TextBox1" Width="150"
                RefValues="Blue;Brown;Green;Orange;Black;White">
            </asp:NumericUpDownExtender>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
