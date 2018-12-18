<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs)
        'Code here
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="SearchTerm" runat="server" />
        <asp:ImageButton ID="ImageButton1" runat="server"
            OnClick="ImageButton1_Click" ImageUrl="search.jpg" />
    </div>
    </form>
</body>
</html>
