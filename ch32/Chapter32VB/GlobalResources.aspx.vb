Public Class GlobalResources
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label3.Text = Resources.Resource.PrivacyStatement
    End Sub

End Class