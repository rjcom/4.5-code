Imports Microsoft.VisualBasic
Imports System
Imports System.Web

Public Class SmartSessionPage2
    Inherits System.Web.UI.Page

    Private Const MYSESSIONPERSONKEY As String = "myperson"

    Public Property MyPerson() As Person
        Get
            Return CType(Session(MYSESSIONPERSONKEY), Person)
        End Get
        Set(ByVal value As Person)
            Session(MYSESSIONPERSONKEY) = value
        End Set
    End Property
End Class
