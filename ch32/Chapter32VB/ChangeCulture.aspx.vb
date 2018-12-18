Imports System.Globalization

Public Class ChangeCulture
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        System.Threading.Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")
        Dim ci As CultureInfo = System.Threading.Thread.CurrentThread.CurrentCulture
        Response.Write("<b><u>CURRENT CULTURE'S INFO</u></b>")
        Response.Write("<p><b>Culture's Name:</b> " & ci.Name.ToString() & "<br>")
        Response.Write("<b>Culture's Parent Name:</b> " & ci.Parent.Name.ToString() & _
           "<br>")
        Response.Write("<b>Culture's Display Name:</b> " & ci.DisplayName.ToString() & _
           "<br>")
        Response.Write("<b>Culture's English Name:</b> " & ci.EnglishName.ToString() & _
           "<br>")
        Response.Write("<b>Culture's Native Name:</b> " & ci.NativeName.ToString() & _
           "<br>")
        Response.Write("<b>Culture's Three Letter ISO Name:</b> " & _
           ci.Parent.ThreeLetterISOLanguageName.ToString() & "<br>")
        Response.Write("<b>Calendar Type:</b> " & ci.Calendar.ToString() & "</p >")
    End Sub

End Class