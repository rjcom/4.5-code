<%@ Page Language="VB" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim dc As New MoviesDataContext()

        'Select and remove all Action movies
        Dim query = From m In dc.Movies 
                    Where (m.Genre = 2) 
                    Select m
        
        dc.Movies.DeleteAllOnSubmit(query)

        'Select a single movie and remove it
        Dim movie = dc.Movies.Single(Function(m) m.Title = "The Princess Bride")
        dc.Movies.DeleteOnSubmit(movie)

        dc.SubmitChanges()
    End Sub

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
