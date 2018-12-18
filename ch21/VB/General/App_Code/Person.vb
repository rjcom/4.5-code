Imports Microsoft.VisualBasic
Imports System
Imports System.Web

<Serializable()> _
Public Class Person
    Public firstName As String
    Public lastName As String

    Public Overrides Function ToString() As String
        Return String.Format("Person Object: {0} {1}", firstName, lastName)
    End Function
End Class
