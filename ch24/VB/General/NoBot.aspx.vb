Imports System
Imports AjaxControlToolkit

Partial Public Class NoBot
    Inherits System.Web.UI.Page
    Protected Sub NoBot1_GenerateChallengeAndResponse(ByVal sender As Object,
      ByVal void As AjaxControlToolkit.NoBotEventArgs) _
      Handles NoBot1.GenerateChallengeAndResponse

        Dim state As NoBotState
        NoBot1.IsValid(state)

        Label1.Text = state.ToString()
    End Sub
End Class
