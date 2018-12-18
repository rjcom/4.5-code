<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        MoviesEntities dc = new MoviesEntities();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title> My Favorite Movies </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
