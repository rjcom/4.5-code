<%@ Page Language="VB" AutoEventWireup="true" CodeFile="DynamicPopulateExtender.aspx.vb" Inherits="DynamicPopulateExtender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>DynamicPopulateExtender Control</title>
    <script type="text/javascript">    
      function updateGrid(value) {
        var behavior = $find('DynamicPopulateExtender1');
        if (behavior) {
            behavior.populate(value);
        }        
      }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
        <asp:DynamicPopulateExtender ID="DynamicPopulateExtender1" runat="server" 
            TargetControlID="Panel1" ServiceMethod="GetDynamicContent">
        </asp:DynamicPopulateExtender>
        <div onclick="updateGrid(0);">
        <asp:LinkButton ID="LinkButton1" runat="server" 
         OnClientClick="return false;">Customers</asp:LinkButton></div>
        <div onclick="updateGrid(1);">
        <asp:LinkButton ID="LinkButton2" runat="server" 
         OnClientClick="return false;">Employees</asp:LinkButton></div>
        <div onclick="updateGrid(2);">
        <asp:LinkButton ID="LinkButton3" runat="server" 
         OnClientClick="return false;">Products</asp:LinkButton></div>
        <asp:Panel ID="Panel1" runat="server">
        </asp:Panel>
    </div>
    </form>
</body>
</html>
