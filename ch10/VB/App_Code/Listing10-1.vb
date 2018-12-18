Imports Microsoft.VisualBasic

Namespace Chapter10

    ''' <summary>
    ''' This is the Movie class.  The namespace has been included
    ''' in order to avoid name collisions between this class and
    ''' the Movie class defined by the LINQ to SQL class designer
    ''' </summary>
    ''' <remarks></remarks>
    Public Class Movie
        Public Property Title() As String
        Public Property Director() As String
        Public Property Genre() As Integer
        Public Property Runtime() As Integer
        Public Property ReleaseDate() As DateTime
    End Class

End Namespace
