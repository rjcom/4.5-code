<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>MutuallyExclusiveCheckBoxExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:MutuallyExclusiveCheckBoxExtender 
         ID="MutuallyExclusiveCheckBoxExtender1" runat="server" 
         TargetControlID="CheckBox1" Key="MyCheckboxes" />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Blue" /><br />
        <asp:MutuallyExclusiveCheckBoxExtender 
         ID="MutuallyExclusiveCheckBoxExtender2" runat="server" 
         TargetControlID="CheckBox2" Key="MyCheckboxes" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Brown" /><br />
        <asp:MutuallyExclusiveCheckBoxExtender 
         ID="MutuallyExclusiveCheckBoxExtender3" runat="server" 
         TargetControlID="CheckBox3" Key="MyCheckboxes" />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Green" /><br />
        <asp:MutuallyExclusiveCheckBoxExtender 
         ID="MutuallyExclusiveCheckBoxExtender4" runat="server" 
         TargetControlID="CheckBox4" Key="MyCheckboxes" />
        <asp:CheckBox ID="CheckBox4" runat="server" Text="Orange" /><br />
    </div>
    </form>
</body>
</html>
