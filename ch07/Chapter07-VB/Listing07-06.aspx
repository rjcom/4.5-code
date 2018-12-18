<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim myForm As Control = Page.FindControl("Form1")
        Dim c1 As Control = LoadControl("Listing07-04.ascx")
        myForm.Controls.Add(c1)
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dynamically adding a user control</title>
</head>
<body>
    <form id="form1" runat="server">
    </form>
</body>
</html>