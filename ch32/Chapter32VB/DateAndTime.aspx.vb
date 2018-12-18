Imports System.Globalization

Public Class DateAndTime
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dt As DateTime = New DateTime(2013, 8, 11, 11, 12, 10, 10)
        System.Threading.Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Response.Write("<b><u>en-US</u></b><br>")
        Response.Write(dt.ToString() & "<br>")

        System.Threading.Thread.CurrentThread.CurrentCulture = New CultureInfo("ru-RU")
        Response.Write("<b><u>ru-RU</u></b><br>")
        Response.Write(dt.ToString() & "<br>")

        System.Threading.Thread.CurrentThread.CurrentCulture = New CultureInfo("fi-FI")
        Response.Write("<b><u>fi-FI</u></b><br>")
        Response.Write(dt.ToString() & "<br>")

        System.Threading.Thread.CurrentThread.CurrentCulture = New CultureInfo("th-TH")
        Response.Write("<b><u>th-TH</u></b><br>")
        Response.Write(dt.ToString())
    End Sub

End Class