Imports Microsoft.VisualBasic
Imports System.Net

Public Class Listing31_2
    Public Sub RSSFeedLengthAsync(uris As IList(Of Uri))
        RSSFeedLengthAsyncHelper(uris.GetEnumerator(), 0)
    End Sub

    Private Sub RSSFeedLengthAsyncHelper(enumerator As IEnumerator(Of Uri), total As Integer)
        If enumerator.MoveNext() Then
            Dim client = New WebClient()
            AddHandler client.DownloadDataCompleted,
                Sub(sender, e)
                    RSSFeedLengthAsyncHelper(enumerator, total + e.Result.Length)
                End Sub
            client.DownloadDataAsync(enumerator.Current)
        Else
            enumerator.Dispose()
        End If
    End Sub
End Class
