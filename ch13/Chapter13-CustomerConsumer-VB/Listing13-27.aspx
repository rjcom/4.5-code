<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim ws As New CalcServiceReference.CalculatorClient()
        Dim result As Integer = ws.Add(TextBox1.Text, TextBox2.Text)
        Label1.Text = result.ToString()
        ws.Close()
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>WCF Calculator Service - Addition Method</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server" /><br />
        <asp:TextBox ID="TextBox2" runat="server" /><br />
        <asp:Button ID="Button1" runat="server" Text="Add" /><br /><br />
        <asp:Label ID="Label1" runat="server" />
    </div>
    </form>
</body>
</html>