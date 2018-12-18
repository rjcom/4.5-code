Imports System.Collections.Generic
Imports System.Linq
Imports System.Web

Namespace VB
    ''' <summary>
    ''' Summary description for CustomerContext
    ''' </summary>
    Public Class CustomerContext
        Public Property Customer() As List(Of Customer)
            Get
                Return m_Customer
            End Get
            Set(value As List(Of Customer))
                m_Customer = value
            End Set
        End Property
        Private m_Customer As List(Of Customer)
        Public Sub New()
            '
            ' TODO: Add constructor logic here
            '
            Customer = New List(Of Customer)()
            Customer.Add(New Customer() With { _
                .ID = 0, _
                 .FirstName = "Maria", _
                 .LastName = " Anders", _
                 .BirthDate = DateTime.Now _
            })
            Customer.Add(New Customer() With { _
                  .ID = 1, _
                  .FirstName = "Ana ", _
                  .LastName = " Trujillo", _
                  .BirthDate = DateTime.Now _
            })
            Customer.Add(New Customer() With { _
                  .ID = 2, _
                  .FirstName = "Antonio ", _
                  .LastName = " Moreno", _
                  .BirthDate = DateTime.Now _
            })
            Customer.Add(New Customer() With { _
                  .ID = 3, _
                  .FirstName = "Thomas ", _
                  .LastName = " Hardy", _
                  .BirthDate = DateTime.Now _
            })
            Customer.Add(New Customer() With { _
                  .ID = 4, _
                  .FirstName = "Christina ", _
                  .LastName = " Berglund", _
                  .BirthDate = DateTime.Now _
            })
            Customer.Add(New Customer() With { _
                  .ID = 5, _
                  .FirstName = "Hanna ", _
                  .LastName = "Moos", _
                  .BirthDate = DateTime.Now _
            })
            Customer.Add(New Customer() With { _
                  .ID = 6, _
                  .FirstName = "Hanna ", _
                  .LastName = "Moos", _
                  .BirthDate = DateTime.Now _
            })
        End Sub

    End Class
End Namespace