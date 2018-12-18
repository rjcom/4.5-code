<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Label1.Text = "VALID NUMBER!"
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CustomValidator</title>
    <script type="text/javascript">
        function validateNumber(oSrc, args) {
            args.IsValid = (args.Value % 5 == 0);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Number:
            <asp:TextBox ID="TextBox1"
                runat="server"></asp:TextBox>
            &nbsp;
            <asp:CustomValidator ID="CustomValidator1"
                runat="server" ControlToValidate="TextBox1"
                Text="Number must be divisible by 5"
                ClientValidationFunction="validateNumber">
            </asp:CustomValidator>
        </p>
        <p>
            <asp:Button ID="Button1" OnClick="Button1_Click"
                runat="server" Text="Button"></asp:Button>
        </p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>