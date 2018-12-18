Public Class Listing03_06
    Inherits System.Web.UI.Page



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub Page_PreInit(sender As Object, e As EventArgs) Handles Me.PreInit
        Page.Theme = Request.QueryString("ThemeChange")
    End Sub

End Class