<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html>
<head id="Head1" runat="server">
    <title>Cross-page PostBacks</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" Runat="server"></asp:TextBox>
        <asp:Button ID="Button1" Runat="server" Text="Button"
             PostBackUrl="~/Listing 21-10.aspx" />
    </div>
    </form>
</body>
</html>
