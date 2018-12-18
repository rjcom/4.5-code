Imports Microsoft.VisualBasic

<Serializable()> _
Public Class ShoppingCart
    Private PID As String
    Private CompanyProductName As String
    Private Number As Integer
    Private Price As Decimal
    Private DateAdded As DateTime

    Public Property ProductID() As String
        Get
            Return PID
        End Get
        Set(ByVal value As String)
            PID = value
        End Set
    End Property

    Public Property ProductName() As String
        Get
            Return CompanyProductName
        End Get
        Set(ByVal value As String)
            CompanyProductName = value
        End Set
    End Property

    Public Property NumberSelected() As Integer
        Get
            Return Number
        End Get
        Set(ByVal value As Integer)
            Number = value
        End Set
    End Property

    Public Property ItemPrice() As Decimal
        Get
            Return Price
        End Get
        Set(ByVal value As Decimal)
            Price = value
        End Set
    End Property

    Public Property DateItemAdded() As DateTime
        Get
            Return DateAdded
        End Get
        Set(ByVal value As DateTime)
            DateAdded = value
        End Set
    End Property
End Class

