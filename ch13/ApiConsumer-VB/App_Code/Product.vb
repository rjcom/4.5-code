Imports Microsoft.VisualBasic

Public Class Product
    Private _Name As String
    Private _Color As String

    Public Property Name() As String
        Get
            Return _Name
        End Get
        Set(value As String)
            _Name = value
        End Set
    End Property

    Public Property Color() As String
        Get
            Return _Color
        End Get
        Set(value As String)
            _Color = value
        End Set
    End Property
End Class