<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html>
<head runat="server">
    <title>BalloonPopupExtender</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>

        <asp:TextBox ID="TextBox1" runat="server" />
        <asp:Panel ID="Panel1" runat="server">
            Please enter your country.
        </asp:Panel>

        <asp:BalloonPopupExtender ID="BalloonPopupExtender1" runat="server"
            TargetControlID="TextBox1"
            BalloonPopupControlID="Panel1"
            BalloonStyle="Cloud" BalloonSize="Small" />
    
    </div>
    </form>
</body>
</html>
