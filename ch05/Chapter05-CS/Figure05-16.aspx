<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        Response.Write("Thanks for your donation!");
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>CheckBox control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
<asp:CheckBox ID="CheckBox1" runat="server" Text="Donate $10 to my cause!"
    OnCheckedChanged="CheckBox1_CheckedChanged" AutoPostBack="true"
    TextAlign="Left" />    
    </div>
    </form>
</body>
</html>