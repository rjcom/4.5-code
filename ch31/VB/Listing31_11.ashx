<%@ WebHandler Language="VB" Class="Listing31_11" %>

Imports System
Imports System.Web
Imports System.Net.Http
Imports System.Threading.Tasks

Public Class Listing31_11 : Inherits HttpTaskAsyncHandler
    
    Public Overrides Async Function ProcessRequestAsync(context As HttpContext) As Task
        Using client = New HttpClient()
            Dim bingTask = client.GetStringAsync("http://bing.com")
            Dim microsoftTask = client.GetStringAsync("http://microsoft.com")
            Dim twitterTask = client.GetStringAsync("http://twitter.com")
            
            Await Task.WhenAll(bingTask, microsoftTask, twitterTask)
        End Using
    End Function
End Class