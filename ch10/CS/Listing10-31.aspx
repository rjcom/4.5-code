<%@ Page Language="C#" %>

<%@ Import Namespace="System.Linq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        MoviesDataContext dc = new MoviesDataContext();

        Movie m = new Movie
        {
            Title = "The Princess Bride",
            Director = "Rob Reiner",
            Genre = 0,
            ReleaseDate = DateTime.Parse("9/25/1987"),
            Runtime = 98
        };

        dc.Movies.InsertOnSubmit(m);
        dc.SubmitChanges();
    }


</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title> My Favorite Movies </title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
