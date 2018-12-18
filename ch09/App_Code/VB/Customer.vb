Imports System.Collections.Generic
Imports System.ComponentModel.DataAnnotations
Imports System.Linq
Imports System.Web

Namespace VB
    ''' <summary>
    ''' Summary description for Customer
    ''' </summary>
    Public Class Customer

        Public Sub New()
        End Sub
        Public Property ID() As Integer
            Get
                Return m_ID
            End Get
            Set(value As Integer)
                m_ID = value
            End Set
        End Property
        Private m_ID As Integer
        <Required> _
        Public Property FirstName() As String
            Get
                Return m_FirstName
            End Get
            Set(value As String)
                m_FirstName = value
            End Set
        End Property
        Private m_FirstName As String
        Public Property LastName() As String
            Get
                Return m_LastName
            End Get
            Set(value As String)
                m_LastName = value
            End Set
        End Property
        Private m_LastName As String
        Public Property BirthDate() As DateTime
            Get
                Return m_BirthDate
            End Get
            Set(value As DateTime)
                m_BirthDate = value
            End Set
        End Property
        Private m_BirthDate As DateTime
    End Class

End Namespace