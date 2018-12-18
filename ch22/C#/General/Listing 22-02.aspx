<%@ Page Language="C#" %>
<%@ OutputCache Duration="30" VaryByParam="None" %>

<!DOCTYPE html>

<script runat="server">
    public static string GetUpdatedTime(HttpContext context)
    {
        return DateTime.Now.ToLongTimeString() + " by " +
                context.User.Identity.Name;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = DateTime.Now.ToLongTimeString();
    }
</script>

<html>
<head>
    <title>Substitution Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" Runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Substitution ID="Substitution1" runat="server"
             MethodName="GetUpdatedTime" />
        <br />
    </div>
    </form>
</body>
</html>
