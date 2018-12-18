Public Class AppendMessage
    Implements IHttpModule

    Dim WithEvents _application As HttpApplication = Nothing

    Public Sub Dispose() Implements IHttpModule.Dispose

    End Sub

    Public Sub Init(context As HttpApplication) Implements IHttpModule.Init
        _application = context
    End Sub

    Public Sub context_EndRequest(ByVal sender As Object, ByVal e As EventArgs) _
            Handles _application.EndRequest

        Dim message As String = String.Format("processed on {0}", System.DateTime.Now.ToString())

        _application.Context.Response.Write(message)
    End Sub

End Class
