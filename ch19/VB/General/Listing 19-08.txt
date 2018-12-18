<%@ Page Language="VB" %>
<!-- requires profile settings in web.config (see book chapter for instructions) -->
<script runat="server">
    Protected Sub CreateUserWizard1_CreatedUser(ByVal sender As Object, _
       ByVal e As System.EventArgs)

        Dim pc As ProfileCommon = New ProfileCommon()
        pc.Initialize(CreateUserWizard1.UserName.ToString(), True)
        
        pc.FirstName = Firstname.Text
        pc.LastName = Lastname.Text
        pc.Age = Age.Text

        pc.Save()
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Creating Users with Personalization</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:CreateUserWizard ID="CreateUserWizard1" Runat="server"  
         BorderWidth="1px" BorderColor="#FFDFAD" BorderStyle="Solid" 
         BackColor="#FFFBD6" Font-Names="Verdana"
         LoginCreatedUser="true" OnCreatedUser="CreateUserWizard1_CreatedUser" >
            <WizardSteps>
                <asp:WizardStep ID="WizardStep1" Runat="server" 
                 Title="Additional Information" StepType="Start">
                    <table width="100%"><tr><td>
                    Firstname: </td><td>
                    <asp:TextBox ID="Firstname" Runat="server"></asp:TextBox>
                    </td></tr><tr><td>
                    Lastname: </td><td>
                    <asp:TextBox ID="Lastname" Runat="server"></asp:TextBox>
                    </td></tr><tr><td>
                    Age: </td><td>
                    <asp:TextBox ID="Age" Runat="server"></asp:TextBox>
                    </td></tr></table>
                </asp:WizardStep>
                <asp:CreateUserWizardStep Runat="server" 
                 Title="Sign Up for Your New Account">
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep Runat="server" Title="Complete">
                </asp:CompleteWizardStep>
            </WizardSteps>
            <StepStyle BorderColor="#FFDFAD" Font-Names="Verdana" 
             BackColor="#FFFBD6" BorderStyle="Solid"
             BorderWidth="1px"></StepStyle>
            <TitleTextStyle Font-Bold="True" BackColor="#990000" 
             ForeColor="White"></TitleTextStyle>
        </asp:CreateUserWizard>
    </form>
</body>
</html>
