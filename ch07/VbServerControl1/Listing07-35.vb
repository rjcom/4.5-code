Imports System.Web.UI
Imports System.Web.UI.WebControls

Friend Class DefaultMessageTemplate
    Implements ITemplate

    Public Sub InstantiateIn(ByVal container As System.Web.UI.Control) _
            Implements System.Web.UI.ITemplate.InstantiateIn

        Dim l As New Literal()
        l.Text = "No MessageTemplate was included."
        container.Controls.Add(l)
    End Sub
End Class