<%@ Page Language="C#" %>
<script runat="server">
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Literal1.Text = "Hello " + TextBox1.Text;
    }
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Simple Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            What is your name?<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Submit" 
                OnClick="Button1_Click1" />
        </div>
        <div>
            <asp:Literal ID="Literal1" runat="server" />
        </div>
    </form>
</body>
</html>