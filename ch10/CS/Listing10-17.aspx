<%@ Page Language="C#"%>

<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Linq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        var movies = GetMovies();
        var genres = GetGenres();

        var query = from m in movies
                    join g in genres on m.Genre equals g.ID
                    select new { m.Title, Genre = g.Name };

        this.GridView1.DataSource = query;
        this.GridView1.DataBind();
    }

    public List<Chapter10.Genre> GetGenres()
    {
        return new List<Chapter10.Genre> {
               new Chapter10.Genre { ID=0, Name="Comedy" },
               new Chapter10.Genre { ID=1, Name="Drama" },
               new Chapter10.Genre { ID=2, Name="Action" }
           };
    }

    public List<Chapter10.Movie> GetMovies()
    {
        return new List<Chapter10.Movie> {
            new Chapter10.Movie { Title="Shrek", Director="Andrew Adamson", Genre=0,
               ReleaseDate=DateTime.Parse("5/16/2001"), RunTime=89 },
            new Chapter10.Movie { Title="Fletch", Director="Michael Ritchie", Genre=0,
               ReleaseDate=DateTime.Parse("5/31/1985"), RunTime=96 },
            new Chapter10.Movie { Title="Casablanca", Director="Michael Curtiz", Genre=1,
               ReleaseDate=DateTime.Parse("1/1/1942"), RunTime=102 },
            new Chapter10.Movie { Title="Batman", Director="Tim Burton", Genre=1,
               ReleaseDate=DateTime.Parse("6/23/1989"), RunTime=126 },
            new Chapter10.Movie { Title="Dances with Wolves", Director="Kevin Costner",Genre=1,
               ReleaseDate=DateTime.Parse("11/21/1990"), RunTime=180 },
            new Chapter10.Movie { Title="Dirty Dancing", Director="Emile Ardolino", Genre=1,
               ReleaseDate=DateTime.Parse("8/21/1987"), RunTime=100 },
            new Chapter10.Movie { Title="The Parent Trap", Director="Nancy Meyers", Genre=0,
               ReleaseDate=DateTime.Parse("7/29/1998"), RunTime=127 },
            new Chapter10.Movie { Title="Ransom", Director="Ron Howard", Genre=1,
               ReleaseDate=DateTime.Parse("11/8/1996"), RunTime=121 },
            new Chapter10.Movie { Title="Ocean’s Eleven", Director="Steven Soderbergh", Genre=1,
               ReleaseDate=DateTime.Parse("12/7/2001"), RunTime=116 },
            new Chapter10.Movie { Title="Steel Magnolias", Director="Herbert Ross", Genre=1,
               ReleaseDate=DateTime.Parse("11/15/1989"), RunTime=117 },
            new Chapter10.Movie { Title="Mystic Pizza", Director="Donald Petrie", Genre=1,
               ReleaseDate=DateTime.Parse("10/21/1988"), RunTime=104 },
            new Chapter10.Movie { Title="Pretty Woman", Director="Garry Marshall", Genre=1,
               ReleaseDate=DateTime.Parse("3/23/1990"), RunTime=119 },
            new Chapter10.Movie { Title="Interview with the Vampire", Director="Neil Jordan", Genre=1, 
               ReleaseDate=DateTime.Parse("11/11/1994"), RunTime=123 },
            new Chapter10.Movie { Title="Top Gun", Director="Tony Scott", Genre=2,
               ReleaseDate=DateTime.Parse("5/16/1986"), RunTime=110 },
            new Chapter10.Movie { Title="Mission Impossible", Director="Brian De Palma", Genre=2, 
               ReleaseDate=DateTime.Parse("5/22/1996"), RunTime=110 },
            new Chapter10.Movie { Title="The Godfather", Director="Francis Ford Coppola",
              Genre=1, ReleaseDate=DateTime.Parse("3/24/1972"), RunTime=175 },
            new Chapter10.Movie { Title="Carlito’s Way", Director="Brian De Palma", 
              Genre=1, ReleaseDate=DateTime.Parse("11/10/1993"), RunTime=144 },
            new Chapter10.Movie { Title="Robin Hood: Prince of Thieves", Director="Kevin Reynolds", 
              Genre=1, ReleaseDate=DateTime.Parse("6/14/1991"), RunTime=143 },
            new Chapter10.Movie { Title="The Haunted", Director="Robert Mandel", 
              Genre=1, ReleaseDate=DateTime.Parse("5/6/1991"), RunTime=100 },
            new Chapter10.Movie { Title="Old School", Director="Todd Phillips", 
              Genre=0, ReleaseDate=DateTime.Parse("2/21/2003"), RunTime=91 },
            new Chapter10.Movie { Title="Anchorman: The Legend of Ron Burgundy", 
              Director="Adam McKay", Genre=0, 
              ReleaseDate=DateTime.Parse("7/9/2004"), RunTime=94 },
            new Chapter10.Movie { Title="Bruce Almighty", Director="Tom Shadyac", 
              Genre=0, ReleaseDate=DateTime.Parse("5/23/2003"), RunTime=101 },
            new Chapter10.Movie { Title="Ace Ventura: Pet Detective", Director="Tom Shadyac",
              Genre=0, ReleaseDate=DateTime.Parse("2/4/1994"), RunTime=86 },
            new Chapter10.Movie { Title="Goonies", Director="Richard Donner", 
              Genre=0, ReleaseDate=DateTime.Parse("6/7/1985"), RunTime=114 },
            new Chapter10.Movie { Title="Sixteen Candles", Director="John Hughes", 
              Genre=1, ReleaseDate=DateTime.Parse("5/4/1984"), RunTime=93 },
            new Chapter10.Movie { Title="The Breakfast Club", Director="John Hughes", 
              Genre=1, ReleaseDate=DateTime.Parse("2/15/1985"), RunTime=97 },
            new Chapter10.Movie { Title="Pretty in Pink", Director="Howard Deutch", 
              Genre=1, ReleaseDate=DateTime.Parse("2/28/1986"), RunTime=96 },
            new Chapter10.Movie { Title="Weird Science", Director="John Hughes", 
              Genre=0, ReleaseDate=DateTime.Parse("8/2/1985"), RunTime=94 },
            new Chapter10.Movie { Title="Breakfast at Tiffany’s", Director="Blake Edwards", 
              Genre=1, ReleaseDate=DateTime.Parse("10/5/1961"), RunTime=115 },
            new Chapter10.Movie { Title="The Graduate", Director="Mike Nichols", 
              Genre=1, ReleaseDate=DateTime.Parse("4/2/1968"), RunTime=105 },
            new Chapter10.Movie { Title="Dazed and Confused", Director="Richard Linklater",
              Genre=0, ReleaseDate=DateTime.Parse("9/24/1993"), RunTime=103 },
            new Chapter10.Movie { Title="Arthur", Director="Steve Gordon", 
              Genre=1, ReleaseDate=DateTime.Parse("9/25/1981"), RunTime=97 },
            new Chapter10.Movie { Title="Monty Python and the Holy Grail", Director="Terry Gilliam", 
              Genre=0, ReleaseDate=DateTime.Parse("5/10/1975"), RunTime=91 },
            new Chapter10.Movie { Title="Dirty Harry", Director="Don Siegel", 
              Genre=2, ReleaseDate=DateTime.Parse("12/23/1971"), RunTime=102 }
        };
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
