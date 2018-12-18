<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LinkButton ID="LinkButton1" Runat="server" OnClick="LinkButton1_Click">
            Submit your name to our database
        </asp:LinkButton>
    </div>
    </form>
</body>
</html>