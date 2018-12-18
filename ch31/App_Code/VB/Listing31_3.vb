Imports Microsoft.VisualBasic
Imports System.Threading.Tasks
Imports System.Net

Public Class Listing31_3
    Public Async Function RSSFeedLengthAsync(uris As IList(Of Uri)) As Task(Of Integer)
        Dim total As Integer = 0
        For Each uri In uris
            Dim data = Await New WebClient().DownloadDataTaskAsync(uri)
            total += data.Length
        Next
        Return total

    End Function
End Class
