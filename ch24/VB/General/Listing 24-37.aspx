<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Accordion Control</title>
    <style type="text/css">
        .titlebar
        {
         background-color:Blue;
         color:White;
         font-size:large;
         font-family:Verdana;
         border:solid 3px Black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:Accordion ID="Accordion1" runat="server" HeaderCssClass="titlebar"
         HeaderSelectedCssClass="titlebar"
         FadeTransitions="true"
         TransitionDuration="333"
         FramesPerSecond="30">
            <Panes>
            <asp:AccordionPane runat="server" ID="AccordionPane1">
                <Header>
                    This is the first pane
                </Header>
                <Content>
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
                </Content>
            </asp:AccordionPane>
            <asp:AccordionPane runat="server" ID="AccordionPane2">
                <Header>
                    This is the second pane
                </Header>
                <Content>
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
                </Content>
            </asp:AccordionPane>
            </Panes>
        </asp:Accordion>
    </div>
    </form>
</body>
</html>
