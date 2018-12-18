<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Control myForm = Page.FindControl("Form1");
        Control c1 = LoadControl("Listing07-04.ascx");
        myForm.Controls.Add(c1);
    }
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