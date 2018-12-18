Option Explicit On
Public Class NameFunctions


    Private firstNameValue As String
    Public Property FirstName() As String
        Get
            Return firstNameValue
        End Get
        Set(ByVal value As String)
            firstNameValue = value
        End Set
    End Property
    Private lastNameValue As String
    Public Property LastName() As String
        Get
            Return lastNameValue
        End Get
        Set(ByVal value As String)
            lastNameValue = value
        End Set
    End Property


    Public ReadOnly Property FullName() As String
        Get
            Return FirstName + "" + LastName
        End Get
    End Property

    Private fullNameLen As String
    Public ReadOnly Property FullNameLength() As Integer
        Get
            Return Len(FullName)
        End Get

    End Property
End Class
