<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        // Code here
    }
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
