<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" 
      TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>CollapsiblePanelExtender</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:Panel ID="Panel1" runat="server" BackColor="#000066" 
         ForeColor="White">
            <asp:Label ID="Label2" runat="server" 
             Text="This is my title"></asp:Label>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Style="overflow: hidden;" Height="0">
            Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
            Donec accumsan lorem. Ut consectetuer tempus metus. Aenean tincidunt 
            venenatis tellus. Suspendisse molestie cursus ipsum. Curabitur ut 
            lectus. Nulla ac dolor nec elit convallis vulputate.
            Nullam pharetra pulvinar nunc. Duis orci. Phasellus a tortor at nunc 
            mattis congue. Vestibulum porta tellus eu orci. Suspendisse quis massa. 
            Maecenas varius, erat non ullamcorper nonummy, mauris erat eleifend 
            odio, ut gravida nisl neque a ipsum. Vivamus facilisis. Cras viverra. 
            Curabitur ut augue eget dolor semper posuere. Aenean at
            magna eu eros tempor pharetra. Aenean mauris.
        </asp:Panel>
        <asp:CollapsiblePanelExtender ID="CollapsiblePanelExtender1" runat="server" 
         TargetControlID="Panel2" Collapsed="true" ExpandControlID="Panel1" 
         CollapseControlID="Panel1" 
         CollapsedSize="1"
         ExpandedSize="300" CollapsedText="[Click to expand]"
         ExpandedText="[Click to collapse]" TextLabelID="Label1"
         SuppressPostBack="true">
        </asp:CollapsiblePanelExtender>
    </div>
    </form>
</body>
</html>