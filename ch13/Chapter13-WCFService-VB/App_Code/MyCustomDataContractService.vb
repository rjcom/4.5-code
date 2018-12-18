Public Class MyCustomDataContractService
    Implements IMyCustomDataContractService

    Public Function HelloFirstName(cust As Customer) As String _
        Implements IMyCustomDataContractService.HelloFirstName
        Return "Hello " & cust.FirstName
    End Function

    Public Function HelloFullName(cust As Customer) As String _
        Implements IMyCustomDataContractService.HelloFullName
        Return "Hello " & cust.FirstName & " " & cust.LastName
    End Function
End Class