<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Control myForm = Page.FindControl("Form1");
        Listing07_04 c1 = (Listing07_04)LoadControl("Listing07-04.ascx");
        myForm.Controls.Add(c1);
        c1.ID = "Listing07_04";
        c1.Text = "Text about our custom user control.";
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