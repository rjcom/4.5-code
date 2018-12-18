<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        string myValue = (string)Session["mykey"];
        Label1.Text = myValue;
    }
</script>

<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" />
    </div>
    </form>
</body>
</html>
