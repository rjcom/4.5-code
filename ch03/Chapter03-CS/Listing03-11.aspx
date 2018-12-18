<%@ Page Language="C#" %>
<%@ PreviousPageType VirtualPath="Listing03-09 (Page 1).aspx" %>
<script runat="server">
    protected void Page_Load(Object sender, EventArgs e)
    {
        if (PreviousPage != null && PreviousPage.IsCrossPagePostBack)
        {
            Label1.Text = "Hello " + PreviousPage.pp_TextBox1.Text + "<br />" +
                "Date Selected: " + PreviousPage.pp_Calendar1.SelectedDate.ToShortDateString();
        }
        else
        {
            Response.Redirect("Listing03-09 (Page 1).aspx");
        }
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