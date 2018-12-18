Imports System.Collections.Generic

Namespace Wrox.VB

    Public Class Customer
        Public Property CustomerID() As String
        Public Property CompanyName() As String
        Public Property ContactName() As String
        Public Property ContactTitle() As String
    End Class

    Public Class CustomerRepository

        Public Function [Select](ByVal customerID As String) As List(Of Customer)
            ' You would implement logic here to retreive
            ' Customer data based on the customerID parameter

            Dim _customers As New List(Of Customer)
            _customers.Add(New Customer() With {.CompanyName = "Acme", .ContactName = "Wiley Cyote", .ContactTitle = "President", .CustomerID = "ACMEC"})
            Return _customers
        End Function

        Public Sub Insert(ByVal c As Customer)
            ' Implement Insert logic
        End Sub

        Public Sub Update(ByVal c As Customer)
            ' Implement Update logic
        End Sub

        Public Sub Delete(ByVal c As Customer)
            ' Implement Delete logic
        End Sub

    End Class
End Namespace


