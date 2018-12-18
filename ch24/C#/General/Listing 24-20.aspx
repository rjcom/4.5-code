<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>ListSearchExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:ListSearchExtender ID="ListSearchExtender1" runat="server" 
         TargetControlID="ListBox1">
        </asp:ListSearchExtender>
        <asp:ListBox ID="ListBox1" runat="server" Width="150">
            <asp:ListItem>Aardvark</asp:ListItem>
            <asp:ListItem>Bee</asp:ListItem>
            <asp:ListItem>Camel</asp:ListItem>
            <asp:ListItem>Dog</asp:ListItem>
            <asp:ListItem>Elephant</asp:ListItem>
        </asp:ListBox>
    </div>
    </form>
</body>
</html>
