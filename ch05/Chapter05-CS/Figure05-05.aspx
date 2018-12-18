<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("Saved on: " + DateTime.Now);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="EmailTextBox" runat="server" AutoCompleteType="Email"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Save Email" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>