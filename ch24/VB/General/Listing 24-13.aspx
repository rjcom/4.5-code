<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
       Image1.ImageUrl = "Images/ToolkitLogo.jpg"
    End Sub

    Protected Sub Option_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       Image1.ImageUrl = "Images/" & DirectCast(sender, LinkButton).Text & ".jpg"
    End Sub
</script>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>DropDownExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:DropDownExtender ID="DropDownExtender1" runat="server" 
                 DropDownControlID="Panel1" TargetControlID="Image1">
                </asp:DropDownExtender>
                <asp:Image ID="Image1" runat="server">
                </asp:Image>
            <asp:Panel ID="Panel1" runat="server" Height="50px" Width="125px">
                <asp:LinkButton ID="Option1" runat="server" 
                 OnClick="Option_Click">ToolkitLogo </asp:LinkButton>
                <asp:LinkButton ID="Option2" runat="server" 
                 OnClick="Option_Click">ToolkitLogo1</asp:LinkButton>
                <asp:LinkButton ID="Option3" runat="server" 
                 OnClick="Option_Click">ToolkitLogo2</asp:LinkButton>
            </asp:Panel>  
            </ContentTemplate>
        </asp:UpdatePanel>    
    </div>
    </form>
</body>
</html>
