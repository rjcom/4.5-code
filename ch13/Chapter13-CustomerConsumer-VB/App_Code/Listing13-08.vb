Imports Microsoft.VisualBasic

Public Class Listing13_08
    Public Function HelloWorld() As String
        Return "Hello"
    End Function
    Public Function HelloWorld(ByVal FirstName As String) As String
        Return "Hello " & FirstName
    End Function
End Class