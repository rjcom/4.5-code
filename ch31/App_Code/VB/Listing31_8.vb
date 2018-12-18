Imports Microsoft.VisualBasic
Imports System.Net.Http
Imports System.Threading.Tasks

Public Class Listing31_8
    Implements IHttpModule
    Public Sub Init(context As HttpApplication) Implements IHttpModule.Init
        Dim helper As New EventHandlerTaskAsyncHelper(AddressOf DownloadWeb)
        context.AddOnBeginRequestAsync(helper.BeginEventHandler, helper.EndEventHandler)
    End Sub
    Public Async Function DownloadWeb(caller As Object, e As EventArgs) As Task
        Using client = New HttpClient()
            Dim result = Await client.GetStringAsync("http://bing.com")
        End Using
    End Function

    Public Sub Dispose() Implements IHttpModule.Dispose

    End Sub
End Class
