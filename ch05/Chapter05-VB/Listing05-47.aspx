<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub WizardStep3_Activate(ByVal sender As Object,
        ByVal e As System.EventArgs)
        ' You could save the inputted data to the database here instead
        Label1.Text = "First name: " & fnameTextBox.Text.ToString() & "<br>" & _
            "Last name: " & lnameTextBox.Text.ToString() & "<br>" &
            "Email: " & emailTextBox.Text.ToString()
    End Sub
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
                <asp:WizardStep ID="WizardStep3" runat="server" Title="Provided Information"
                    StepType="Complete" OnActivate="WizardStep3_Activate">
                    <asp:Label ID="Label1" runat="server" />
                </asp:WizardStep>
            </WizardSteps>
        </asp:Wizard>
    </form>
</body>
</html>