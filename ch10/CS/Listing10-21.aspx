<%@ Page Language="C#" %>

<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Xml.Linq" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        var query = from m in XElement.Load(MapPath("Listing10-19.xml")).Elements("Movie")
                    select new Chapter10.Movie {
                               Title = (string)m.Element("Title"),
                               Director = (string)m.Element("Director"),
                               Genre = (int)m.Element("Genre"),
                               ReleaseDate = (DateTime)m.Element("ReleaseDate"),
                               RunTime = (int)m.Element("RunTime")        
                           };

        this.GridView1.DataSource = query;
        this.GridView1.DataBind();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>My Favorite Movies</title>
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
