'------------------------------------------------------------------------------
' <auto-generated>
'    This code was generated from a template.
'
'    Manual changes to this file may cause unexpected behavior in your application.
'    Manual changes to this file will be overwritten if the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Imports System
Imports System.Collections.Generic

Partial Public Class Customer
    Public Property CustomerID As Integer
    Public Property PersonID As Nullable(Of Integer)
    Public Property StoreID As Nullable(Of Integer)
    Public Property TerritoryID As Nullable(Of Integer)
    Public Property AccountNumber As String
    Public Property rowguid As System.Guid
    Public Property ModifiedDate As Date

    Public Overridable Property SalesTerritory As SalesTerritory
    Public Overridable Property SalesOrderHeaders As ICollection(Of SalesOrderHeader) = New HashSet(Of SalesOrderHeader)

End Class
