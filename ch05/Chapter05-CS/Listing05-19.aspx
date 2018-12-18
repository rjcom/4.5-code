<%@ Page Language="C#" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Table Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Table ID="Table1" runat="server"
            Caption="<b>Table 1:</b> This is an example of a caption above a table."
            BackColor="Gainsboro">
            <asp:TableRow ID="Tablerow1" runat="server">
                <asp:TableCell ID="Tablecell1" runat="server">
                    Lorem ipsum dolor sit
                    amet, consectetuer adipiscing elit. Duis vel justo. Aliquam
                    adipiscing. In mattis volutpat urna. Donec adipiscing, nisl eget
                    dictum egestas, felis nulla ornare ligula, ut bibendum pede augue
                    eu augue. Sed vel risus nec urna pharetra imperdiet. Aenean
                    semper. Sed ullamcorper auctor sapien. Suspendisse luctus. Ut ac
                    nibh. Nam lorem. Aliquam dictum aliquam purus.
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </form>
</body>
</html>