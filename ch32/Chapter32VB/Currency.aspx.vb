Imports System.Globalization

Public Class Currency
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim myNumber As Double = 5123456.0
        System.Threading.Thread.CurrentThread.CurrentCulture = New CultureInfo("en-US")
        Response.Write("<b><u>en-US</u></b><br>")
        Response.Write(myNumber.ToString("c") & "<br>")

        System.Threading.Thread.CurrentThread.CurrentCulture = New CultureInfo("vi-VN")
        Response.Write("<b><u>vi-VN</u></b><br>")
        Response.Write(myNumber.ToString("c") & "<br>")

        System.Threading.Thread.CurrentThread.CurrentCulture = New CultureInfo("fi-FI")
        Response.Write("<b><u>fi-FI</u></b><br>")
        Response.Write(myNumber.ToString("c") & "<br>")

        System.Threading.Thread.CurrentThread.CurrentCulture = New CultureInfo("de-CH")
        Response.Write("<b><u>de-CH</u></b><br>")
        Response.Write(myNumber.ToString("c"))
    End Sub

End Class