<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        CalcServiceReference.CalculatorClient ws = new CalcServiceReference.CalculatorClient();
        int result = ws.Add(int.Parse(TextBox1.Text), int.Parse(TextBox2.Text));
        Label1.Text = result.ToString();
        ws.Close();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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