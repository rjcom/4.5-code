<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>ResizableControlExtender Control</title>
    <style type="text/css">
        .handle
        {
         width:10px;
         height:10px;
         background-color:Black;
         cursor: se-resize;
        }
        .resizable
        {
            border-style:solid;
            border-width:2px;
            border-color:Black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:ResizableControlExtender ID="ResizableControlExtender1" runat="server" 
         TargetControlID="Panel1" HandleCssClass="handle" 
         ResizableCssClass="resizable">
        </asp:ResizableControlExtender>
        <asp:Panel ID="Panel1" runat="server" Width="300" Height="225">
            <asp:Image ID="Image1" runat="server" ImageUrl="Images/ToolkitLogo.jpg" 
             style="width:100%; height:100%"/>
        </asp:Panel>        
    </div>
    </form>
</body>
</html>
