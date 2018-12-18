<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AutoCompleteExtender.aspx.cs" Inherits="AutoCompleteExtender" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <title>AutoComplete</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
            TargetControlID="TextBox1" ServiceMethod="GetCompletionList" 
            UseContextKey="True">
        </asp:AutoCompleteExtender>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    </form>
</body>
</html>
