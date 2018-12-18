<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void WizardStep3_Activate(object sender, EventArgs e)
    {
        Label1.Text = "First name: " + fnameTextBox.Text.ToString() + "<br>" +
            "Last name: " + lnameTextBox.Text.ToString() + "<br>" +
            "Email: " + emailTextBox.Text.ToString();
    }
    void Wizard1_NextButtonClick(object sender, WizardNavigationEventArgs e)
    {
        if (e.NextStepIndex == 2) 
        {
            if (Roles.IsUserInRole("ManagerAccess"))
            {
                Wizard1.ActiveStepIndex = 2;
            }
            else
            {
                Wizard1.ActiveStepIndex = 3;
            }
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration using the Wizard Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Wizard ID="Wizard1" runat="Server">
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" runat="server"
                    Title="Provide Personal Info">
                    First name:<br />
                    <asp:TextBox ID="fnameTextBox" runat="server"></asp:TextBox><br />
                    Last name:<br />
                    <asp:TextBox ID="lnameTextBox" runat="server"></asp:TextBox><br />
                    Email:<br />
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox><br />
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server"
                    Title="Membership Information">
                    Are you already a member of our group?<br />
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes"
                        GroupName="Member" />
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="No"
                        GroupName="Member" />
                </asp:WizardStep>
                <asp:WizardStep ID="MemberStep" runat="server"
                    Title="Provide Membership Number">
                    Membership Number:<br />
                    <asp:TextBox ID="mNumberTextBox" runat="server"></asp:TextBox>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="Provided Information"
                    StepType="Complete" OnActivate="WizardStep3_Activate">
                    <asp:Label ID="Label1" runat="server" />
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </form>
</body>
</html>
