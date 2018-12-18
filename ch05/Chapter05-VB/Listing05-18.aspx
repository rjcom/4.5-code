<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim tr As New TableRow()
        Dim fname As New TableCell()
        fname.Text = "Christian"
        tr.Cells.Add(fname)
        Dim lname As New TableCell()
        lname.Text = "Wenz"
        tr.Cells.Add(lname)
        Table1.Rows.Add(tr)
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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