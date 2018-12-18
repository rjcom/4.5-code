<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SlideShowExtender.aspx.cs" Inherits="SlideShowExtender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>SlideShowExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:Panel ID="Panel1" runat="server" Width="300px" 
         HorizontalAlign="Center">
            <asp:SlideShowExtender ID="SlideShowExtender1" runat="server" 
                ImageTitleLabelID="LabelTitle" TargetControlID="Image1" 
                UseContextKey="True" NextButtonID="ButtonNext" 
                PlayButtonID="ButtonPlay" 
                PreviousButtonID="ButtonPrevious" 
                SlideShowServiceMethod="GetSlides" 
                ImageDescriptionLabelID="LabelDescription">
            </asp:SlideShowExtender>
            <asp:Label ID="LabelTitle" runat="server" Text="Label" 
             Font-Bold="True"></asp:Label><br /><br />
            <asp:Image ID="Image1" runat="server" 
             ImageUrl="Images/ToolkitLogo.jpg" /><br />
            <asp:Label ID="LabelDescription" runat="server" 
             Text="Label"></asp:Label><br /><br />
            <asp:Button ID="ButtonPrevious" runat="server" Text="Previous" />
            <asp:Button ID="ButtonNext" runat="server" Text="Next" />
            <asp:Button ID="ButtonPlay" runat="server" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
