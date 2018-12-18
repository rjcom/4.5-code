Imports Microsoft.VisualBasic
Imports System
Imports System.Web

Public Class SmartSessionPage
    Inherits System.Web.UI.Page

    Private Const MYSESSIONKEY As String = "mykey"
    Public Property MyKey() As String
        Get
            Return CType(Session(MYSESSIONKEY), String)
        End Get
        Set(ByVal value As String)
            Session(MYSESSIONKEY) = value
        End Set
    End Property
End Class
