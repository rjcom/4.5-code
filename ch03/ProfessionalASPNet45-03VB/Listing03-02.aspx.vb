Public Class Listing03_02
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Literal1.Text = "Hello " & TextBox1.Text
    End Sub

End Class