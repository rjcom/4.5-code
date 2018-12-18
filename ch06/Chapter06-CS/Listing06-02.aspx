<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(Object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Label1.Text = "Page is valid!";
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RequiredFieldValidator</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Abbreviated for clarity -->
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                runat="server" ControlToValidate="TextBox1" 
                EnableClientScript="true">
                Required!
            </asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit"
                OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>