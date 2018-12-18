Imports Microsoft.VisualBasic
Imports System.Net

Public Class Listing31_1
    Public Function RSSFeedLength(uris As IList(Of Uri)) As Integer
        Dim total As Integer = 0
        For Each uri In uris
            Dim data = New WebClient().DownloadData(uri)
            total += data.Length
        Next
        Return total
    End Function


End Class
