<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(Object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Label1.Text = "VALID ENTRY!";
        }
    }
    void ValidateNumber(object source, ServerValidateEventArgs args)
    {
        try
        {
            int num = int.Parse(args.Value);
            args.IsValid = ((num % 5) == 0);
        }
        catch (Exception ex)
        {
            args.IsValid = false;
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CustomValidator</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                Number:
                <asp:TextBox ID="TextBox1"
                    runat="server"></asp:TextBox>
                &nbsp;
                <asp:CustomValidator ID="CustomValidator1"
                    runat="server" ControlToValidate="TextBox1"
                    Text="Number must be divisible by 5"
                    OnServerValidate="ValidateNumber"></asp:CustomValidator>
            </p>
            <p>
                <asp:Button ID="Button1" OnClick="Button1_Click"
                    runat="server" Text="Button"></asp:Button>
            </p>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>