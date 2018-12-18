Public Class _Default
    Inherits Page

    Protected Overrides Sub OnPreInit(e As EventArgs)
        If Request.Browser.IsMobileDevice Then
            MasterPageFile = "~/MobileSite.Master"
        End If

        MyBase.OnPreInit(e)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load

    End Sub
End Class