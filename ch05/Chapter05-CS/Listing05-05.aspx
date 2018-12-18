<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
protected void Button1_Click(object sender, EventArgs e)
{
    // Code here
}
</script>

<Testing the button click event</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Click Here" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
