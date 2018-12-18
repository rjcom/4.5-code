<%@ WebHandler Language="VB" Class="Listing31_7" %>

Imports System
Imports System.Web
Imports System.Threading.Tasks
Imports System.Net.Http

Public Class Listing31_7 : Inherits HttpTaskAsyncHandler
    
    Public Overrides Async Function ProcessRequestAsync(context As HttpContext) As Task
        Using client = New HttpClient()
            Dim bingTask = Await client.GetStringAsync("http://bing.com")
            context.Response.Write(bingTask)
        End Using
    End Function
End Class