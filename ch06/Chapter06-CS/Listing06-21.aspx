<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(Object sender, EventArgs e)
    {
        foreach (BaseValidator bv in Page.Validators)
        {
            bv.EnableClientScript = false;
        }
    }
    protected void Button1_Click(Object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Label1.Text = "VALID ENTRY!";
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                Text="*" ControlToValidate="TextBox1" EnableClientScript="false">
            </asp:RequiredFieldValidator>
        </p>
        <p>
            Last name
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                runat="server" ErrorMessage="You must enter your last name"
                Text="*" ControlToValidate="TextBox2" EnableClientScript="false">
            </asp:RequiredFieldValidator>
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