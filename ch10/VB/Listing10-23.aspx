<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        
        Dim query = From m In XElement.Load(MapPath("Listing10-19.xml")).Elements("Movie")
                    Join g In XElement.Load(MapPath("Listing10-22.xml")).Elements("Genre")
                        On CInt(m.Element("Genre")) Equals CInt(g.Element("ID"))
                    Select New With {
                        .Title = CStr(m.Element("Title")),
                        .Director = CStr(m.Element("Director")),
                        .Genre = CStr(g.Element("Name")),
                        .ReleaseDate = CDate(m.Element("ReleaseDate")),
                        .Runtime = CInt(m.Element("RunTime"))
                    }

        Me.GridView1.DataSource = query
        Me.GridView1.DataBind()
    End Sub
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
