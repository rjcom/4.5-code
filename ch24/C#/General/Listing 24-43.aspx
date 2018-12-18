<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>TabContainer Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <asp:TabContainer ID="TabContainer1" runat="server" Height="300px">
            <asp:TabPanel runat="server">
                <HeaderTemplate>Tab 1</HeaderTemplate>
                <ContentTemplate>Here is some tab one content.</ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel runat="server">
                <HeaderTemplate>Tab 2</HeaderTemplate>
                <ContentTemplate>Here is some tab two content.</ContentTemplate>
            </asp:TabPanel>
            <asp:TabPanel runat="server">
                <HeaderTemplate>Tab 3</HeaderTemplate>
                <ContentTemplate>Here is some tab three content.</ContentTemplate>
            </asp:TabPanel>
        </asp:TabContainer>
    </div>
    </form>
</body>
</html>
