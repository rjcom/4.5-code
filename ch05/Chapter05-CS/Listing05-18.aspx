<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        TableRow tr = new TableRow();
        TableCell fname = new TableCell();
        fname.Text = "Christian";
        tr.Cells.Add(fname);
        TableCell lname = new TableCell();
        lname.Text = "Wenz";
        tr.Cells.Add(lname);
        Table1.Rows.Add(tr);
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Table ID="Table1" runat="server">
                <asp:TableRow ID="TableRow1" runat="server" Font-Bold="True"
                    ForeColor="White" BackColor="DarkGray">
                    <asp:TableHeaderCell>First Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Last Name</asp:TableHeaderCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Jason</asp:TableCell>
                    <asp:TableCell>Gaylord</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Scott</asp:TableCell>
                    <asp:TableCell>Hanselman</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Todd</asp:TableCell>
                    <asp:TableCell>Miranda</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Pranav</asp:TableCell>
                    <asp:TableCell>Rastogi</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
    </form>
</body>
</html>