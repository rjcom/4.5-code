<%@ Page Language="vb" %>
<%@ PreviousPageType VirtualPath="Page1.aspx" %>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If PreviousPage IsNot Nothing AndAlso PreviousPage.IsCrossPagePostBack Then
            Label1.Text = "Hello " & PreviousPage.pp_Textbox1.Text & "<br />" &
                "Date Selected: " & PreviousPage.pp_Calendar1.SelectedDate.ToShortDateString()
        Else
            Response.Redirect("Page1.aspx")
        End If
    End Sub
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Second Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" Runat="server"></asp:Label>
    </form>
</body>
</html>