<%@ Page Language="VB" %>

<%@ Import Namespace="Chapter10" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim movies As List(Of Movie) = GetMovies()
        Dim genres as List(Of Genre) = GetGenres() 
        
        Dim query = From m As Movie In movies Join g In genres
                    On m.Genre Equals g.ID
                    Select New With {.Title = m.Title, .Genre = g.Name}
        
        GridView1.DataSource = query
        GridView1.DataBind()
    End Sub

    Public Function GetGenres() As List(Of Genre)
        Dim genres As Genre() = {
            New Genre With {.ID = 0, .Name = "Comedy"},
            New Genre With {.ID = 1, .Name = "Drama"},
            New Genre With {.ID = 2, .Name = "Action"}
        }

        Return New List(Of Genre)(genres)
    End Function

    Public Function GetMovies() As List(Of Movie)
        Dim movies As New List(Of Movie) From {
            New Movie With {.Title = "Shrek", .Director = "Andrew Adamson",
                  .Genre = 0, .ReleaseDate = DateTime.Parse("5/16/2001"), .Runtime = 89},
            New Movie With {.Title = "Fletch", .Director = "Michael Ritchie",
                 .Genre = 0, .ReleaseDate = DateTime.Parse("5/31/1985"), .Runtime = 96},
            New Movie With {.Title = "Casablanca", .Director = "Michael Curtiz",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("1/1/1942"), .Runtime = 102},
            New Movie With {.Title = "Batman", .Director = "Tim Burton",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("6/23/1989"), .Runtime = 126},
            New Movie With {.Title = "Dances with Wolves", .Director = "Kevin Costner",
                 .Genre = 1, .ReleaseDate = DateTime.Parse("11/21/1990"), .Runtime = 180},
            New Movie With {.Title = "Dirty Dancing", .Director = "Emile Ardolino",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("8/21/1987"), .Runtime = 100},
            New Movie With {.Title = "The Parent Trap", .Director = "Nancy Meyers",
                  .Genre = 0, .ReleaseDate = DateTime.Parse("7/29/1998"), .Runtime = 127},
            New Movie With {.Title = "Ransom", .Director = "Ron Howard",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("11/8/1996"), .Runtime = 121},
            New Movie With {.Title = "Ocean’s Eleven", .Director = "Steven Soderbergh",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("12/7/2001"), .Runtime = 116},
            New Movie With {.Title = "Steel Magnolias", .Director = "Herbert Ross",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("11/15/1989"), .Runtime = 117},
            New Movie With {.Title = "Mystic Pizza", .Director = "Donald Petrie",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("10/21/1988"), .Runtime = 104},
            New Movie With {.Title = "Pretty Woman", .Director = "Garry Marshall",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("3/23/1990"), .Runtime = 119},
            New Movie With {.Title = "Interview with the Vampire", .Director = "Neil Jordan",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("11/11/1994"), .Runtime = 123},
            New Movie With {.Title = "Top Gun", .Director = "Tony Scott",
                  .Genre = 2, .ReleaseDate = DateTime.Parse("5/16/1986"), .Runtime = 110},
            New Movie With {.Title = "Mission Impossible", .Director = "Brian De Palma",
                  .Genre = 2, .ReleaseDate = DateTime.Parse("5/22/1996"), .Runtime = 110},
            New Movie With {.Title = "The Godfather", .Director = "Francis Ford Coppola",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("3/24/1972"), .Runtime = 175},
            New Movie With {.Title = "Carlito’s Way", .Director = "Brian De Palma",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("11/10/1993"), .Runtime = 144},
            New Movie With {.Title = "Robin Hood: Prince of Thieves",
                  .Director = "Kevin Reynolds", .Genre = 1,
                  .ReleaseDate = DateTime.Parse("6/14/1991"), .Runtime = 143},
            New Movie With {.Title = "The Haunted", .Director = "Robert Mandel",
                 .Genre = 1, .ReleaseDate = DateTime.Parse("5/6/1991"), .Runtime = 100},
            New Movie With {.Title = "Old School", .Director = "Todd Phillips",
                  .Genre = 0, .ReleaseDate = DateTime.Parse("2/21/2003"), .Runtime = 91},
            New Movie With {.Title = "Anchorman: The Legend of Ron Burgundy",
                 .Director = "Adam McKay", .Genre = 0,
                 .ReleaseDate = DateTime.Parse("7/9/2004"), .Runtime = 94},
            New Movie With {.Title = "Bruce Almighty", .Director = "Tom Shadyac",
                  .Genre = 0, .ReleaseDate = DateTime.Parse("5/23/2003"), .Runtime = 101},
            New Movie With {.Title = "Ace Ventura: Pet Detective",
                  .Director = "Tom Shadyac", .Genre = 0,
                  .ReleaseDate = DateTime.Parse("2/4/1994"), .Runtime = 86},
            New Movie With {.Title = "Goonies", .Director = "Richard Donner",
                  .Genre = 0, .ReleaseDate = DateTime.Parse("6/7/1985"), .Runtime = 114},
            New Movie With {.Title = "Sixteen Candles", .Director = "John Hughes",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("5/4/1984"), .Runtime = 93},
            New Movie With {.Title = "The Breakfast Club", .Director = "John Hughes",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("2/15/1985"), .Runtime = 97},
            New Movie With {.Title = "Pretty in Pink", .Director = "Howard Deutch",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("2/28/1986"), .Runtime = 96},
            New Movie With {.Title = "Weird Science", .Director = "John Hughes",
                  .Genre = 0, .ReleaseDate = DateTime.Parse("8/2/1985"), .Runtime = 94},
            New Movie With {.Title = "Breakfast at Tiffany’s", .Director = "Blake Edwards",
                  .Genre = 1, .ReleaseDate = DateTime.Parse("10/5/1961"), .Runtime = 115},
            New Movie With {.Title = "The Graduate", .Director = "Mike Nichols",
                 .Genre = 1, .ReleaseDate = DateTime.Parse("4/2/1968"), .Runtime = 105},
            New Movie With {.Title = "Dazed and Confused", .Director = "Richard Linklater",
                  .Genre = 0, .ReleaseDate = DateTime.Parse("9/24/1993"), .Runtime = 103},
            New Movie With {.Title = "Arthur", .Director = "Steve Gordon",
                 .Genre = 1, .ReleaseDate = DateTime.Parse("9/25/1981"), .Runtime = 97},
            New Movie With {.Title = "Monty Python and the Holy Grail",
                 .Director = "Terry Gilliam", .Genre = 0,
                 .ReleaseDate = DateTime.Parse("5/10/1975"), .Runtime = 91},
              New Movie With {.Title = "Dirty Harry", .Director = "Don Siegel",
                 .Genre = 2, .ReleaseDate = DateTime.Parse("12/23/1971"), .Runtime = 102}
              }

        Return movies
    End Function
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
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
