<%@ Page Language="VB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>TextBoxWatermarkExtender Control</title>
    <style type="text/css">
        .watermark
        {
         width:150px;
         font:Verdana;
         font-style:italic;
         color:GrayText;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
         WatermarkText="Enter in something here!" TargetControlID="TextBox1" 
         WatermarkCssClass="watermark">
        </asp:TextBoxWatermarkExtender>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
