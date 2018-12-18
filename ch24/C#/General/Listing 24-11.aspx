<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>ConfirmButtonExtender</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:ConfirmButtonExtender ID="ConfirmButtonExtender1" runat="server" 
         TargetControlID="Button1"
         DisplayModalPopupID="ModalPopupExtender1">
        </asp:ConfirmButtonExtender>
        <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" 
            CancelControlID="ButtonNo" OkControlID="ButtonYes" 
            PopupControlID="Panel1" 
            TargetControlID="Button1">
        </asp:ModalPopupExtender>
        <asp:Button ID="Button1" runat="server" Text="Button" />        
        <asp:Panel ID="Panel1" runat="server"
         style="display:none; background-color:White; width:200; 
         border-width:2px; border-color:Black; border-style:solid; padding:20px;">
         Are you sure you wanted to click this button?<br />
         <asp:Button ID="ButtonYes" runat="server" Text="Yes" />
         <asp:Button ID="ButtonNo" runat="server" Text="No" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
