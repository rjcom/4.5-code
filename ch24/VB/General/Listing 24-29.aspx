<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>SliderExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:SliderExtender ID="SliderExtender1" runat="server" 
         TargetControlID="TextBox1"> <%-- BoundControlID="Label1" --%>
        </asp:SliderExtender>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

        <%-- Label for BoundControlID
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Font-Bold="true" />
        --%>

    </div>
    </form>
</body>
</html>
