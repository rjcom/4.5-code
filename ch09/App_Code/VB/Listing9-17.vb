Imports System.Collections
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.ModelBinding
Imports VB

Namespace VB
    Public Class MyModelView
        Inherits ModelDataSourceView
        Private ReadOnly _owner As MyModelDataSource

        Public Sub New(owner As MyModelDataSource)
            MyBase.New(owner)
            _owner = owner
        End Sub
        Protected Overrides Function ExecuteSelect(arguments As DataSourceSelectArguments) As IEnumerable
            Dim _context As New CustomerContext()
            Return _context.Customer.Take(3).AsEnumerable()
        End Function
    End Class

    Public Class MyModelDataSource
        Inherits ModelDataSource
        Private _view As MyModelView

        Public Sub New(dataControl As Control)

            MyBase.New(dataControl)
        End Sub
        Public Overrides ReadOnly Property View() As ModelDataSourceView
            Get
                If _view Is Nothing Then
                    _view = New MyModelView(Me)
                End If
                Return _view
            End Get
        End Property

    End Class
End Namespace
