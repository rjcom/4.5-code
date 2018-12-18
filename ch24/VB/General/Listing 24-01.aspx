<%@ Page Language="VB" AutoEventWireup="true" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html>
<head runat="server">
    <title>First Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />

        <asp:AlwaysVisibleControlExtender 
         ID="AlwaysVisibleControlExtender1" runat="server"
         TargetControlID="TextBox1">
        </asp:AlwaysVisibleControlExtender>

        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
