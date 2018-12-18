<%@ Page Language="C#" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Wizard server control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Wizard ID="Wizard1" runat="server" DisplaySideBar="True"
            ActiveStepIndex="0">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server" Title="The very first step">
                    This is the first step.
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Oh, the second step also">
                    This is the second step.
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="This is the last one!">
                    This is the third and final step.
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </form>
</body>
</html>