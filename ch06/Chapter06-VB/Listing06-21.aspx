<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        For Each bv As BaseValidator In Page.Validators
            bv.EnableClientScript = False
        Next
    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        If (Page.IsValid) Then
            Label1.Text = "VALID ENTRY!"
        End If
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>ValidationSummary</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            First name
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                runat="server" ErrorMessage="You must enter your first name"
                Text="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
        </p>
        <p>
            Last name
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                runat="server" ErrorMessage="You must enter your last name"
                Text="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="Button1" OnClick="Button1_Click" runat="server"
                Text="Submit"></asp:Button>
        </p>
        <p>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                ShowMessageBox="true" ShowSummary="false"></asp:ValidationSummary>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>