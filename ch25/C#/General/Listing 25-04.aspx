<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>jQuery</title>
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            var divs = $("div").size();
            var spans = $("span").size();
            alert(divs + " <div> elements\n" +
                  spans + " <span> elements");
        });
    </script>
</head>
<body>
    <form runat="server">
        <div>
            <span>First label</span>
        </div>
        <asp:Panel ID="Panel1" runat="server">
            <asp:Label ID="Label1" runat="server" 
                Text="Second label" />
        </asp:Panel>
    </form>
</body>
</html>
