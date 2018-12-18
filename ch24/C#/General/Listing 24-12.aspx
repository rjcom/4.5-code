<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>DragPanel control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <div style="height: 600px;">
            <asp:DragPanelExtender ID="DragPanelExtender1" runat="server" 
             DragHandleID="Label1" TargetControlID="Panel1">
            </asp:DragPanelExtender>
            <asp:Panel ID="Panel1" runat="server" Width="450px">
                <asp:Label ID="Label1" runat="server" 
                 Text="Drag this Label control to move the control" 
                 BackColor="DarkBlue" ForeColor="White"></asp:Label>
                <asp:Panel ID="Panel2" runat="server" Width="450px">
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
            Donec accumsan lorem. Ut consectetuer tempus metus. Aenean tincidunt 
            venenatis tellus. Suspendisse molestie cursus ipsum. Curabitur ut 
            lectus. Nulla ac dolor nec elit convallis vulputate. Nullam pharetra 
            pulvinar nunc. Duis orci. Phasellus a tortor at nunc mattis congue. 
            Vestibulum porta tellus eu orci. Suspendisse quis massa. Maecenas 
            varius, erat non ullamcorper nonummy, mauris erat eleifend odio, ut 
            gravida nisl neque a ipsum. Vivamus facilisis. Cras viverra. Curabitur 
            ut augue eget dolor semper posuere. Aenean at magna eu eros tempor 
            pharetra. Aenean mauris.
                </asp:Panel>
            </asp:Panel>
        </div>
    </div>
    </form>
</body>
</html>
