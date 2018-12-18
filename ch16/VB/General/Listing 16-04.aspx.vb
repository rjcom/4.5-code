
Partial Class Listing_16_04
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Label1.Text = "Hello " & HttpUtility.HtmlEncode(TextBox1.Text) & "!"
    End Sub
End Class
