<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>AnimationExtender</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
        <asp:AnimationExtender ID="AnimationExtender1" runat="server" 
            TargetControlID="Panel1">
            <Animations>
                <OnClick>
                    <Sequence>
                        <Color PropertyKey="background" StartValue="#999966" 
                         EndValue="#FFFFFF" Duration="5.0" />
                    </Sequence>
                </OnClick>
            </Animations>
        </asp:AnimationExtender>
        <asp:Panel ID="Panel1" runat="server" BorderColor="Black" 
            BorderWidth="3px" Font-Bold="True" Width="600px">            
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
    </div>
    </form>
</body>
</html>
