Imports Microsoft.VisualBasic

Public Class LastNameComparer
    Implements IComparer(Of String)

    Function Compare(x As String, y As String) As Integer _
        Implements IComparer(Of String).Compare

        Dim director1LastName As String
        Dim director2LastName As String
        director1LastName = x.Substring(x.LastIndexOf(" "))
        director2LastName = y.Substring(y.LastIndexOf(" "))
        Return director1LastName.CompareTo(director2LastName)
    End Function

End Class
