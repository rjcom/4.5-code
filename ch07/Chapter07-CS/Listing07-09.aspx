<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if ((Session["Listing07-04"] == null) ||
            (!(bool)Session["Listing07-04"]))
        {
            Control myForm = Page.FindControl("Form1");
            Control c1 = LoadControl("Listing07-04.ascx");
            ((Listing07_04)c1).Text = "Loaded after first page load";
            myForm.Controls.Add(c1);

            Session["Listing07-04"] = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if ((Session["Listing07-04"] != null) &&
            ((bool)Session["Listing07-04"]))
        {
            Control myForm = Page.FindControl("Form1");
            Control c1 = LoadControl("Listing07-04.ascx");
            ((Listing07_04)c1).Text = "Loaded after a postback";
            myForm.Controls.Add(c1);
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Load Control" 
            OnClick="Button1_Click" />    
    </div>
    </form>
</body>
</html>