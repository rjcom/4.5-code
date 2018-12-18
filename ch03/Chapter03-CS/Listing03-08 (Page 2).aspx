<%@ Page Language="C#" %>
<script runat="server">
    protected void Page_Load(Object sender, EventArgs e)
    {
        TextBox pp_TextBox1;
        Calendar pp_Calendar1;
        pp_TextBox1 = (TextBox)PreviousPage.FindControl("TextBox1");
        pp_Calendar1 = (Calendar)PreviousPage.FindControl("Calendar1");
        Label1.Text = "Hello " + pp_TextBox1.Text + "<br />" +
            "Date Selected: " + pp_Calendar1.SelectedDate.ToShortDateString();           
    }
</script>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">
    <title>Second Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" Runat="server"></asp:Label>
    </form>
</body>
</html>