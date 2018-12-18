Imports System.Collections.Generic
Imports System.Linq
Imports System.Web

Namespace VB
    ''' <summary>
    ''' Summary description for CustomerRepository
    ''' </summary>
    Public Class CustomerRepository
        Private _context As New CustomerContext()

        Public Function SelectCustomers(<System.Web.ModelBinding.QueryString> id As System.Nullable(Of Integer)) As IEnumerable(Of Customer)
            If id.HasValue Then
                Return _context.Customer.Where(Function(c) c.ID = id).AsEnumerable()
            Else
                Return _context.Customer.AsEnumerable()
            End If
        End Function
    End Class
End Namespace