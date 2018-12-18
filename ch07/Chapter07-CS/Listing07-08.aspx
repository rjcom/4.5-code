<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        Control myForm = Page.FindControl("Form1");
        Control c1 = LoadControl("Listing07-04.ascx");
        myForm.Controls.Add(c1);

        if (c1 is Listing07_04)
        {
            ((Listing07_04)c1).ID = "Listing07_04";
            ((Listing07_04)c1).Text = "Text about our custom user control (not cached)";
        }
        else if ((c1 is PartialCachingControl) &&
            ((PartialCachingControl)c1).CachedControl != null)
        {
            Listing07_04 listingControl =
                ((Listing07_04)((PartialCachingControl)c1).CachedControl);
            listingControl.ID = "Listing07_04";
            listingControl.Text = "Text about our custom user control (partially cached)";
        }
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