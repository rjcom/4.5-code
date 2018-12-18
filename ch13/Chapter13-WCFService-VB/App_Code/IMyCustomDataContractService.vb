Imports System.ServiceModel
Imports System.Runtime.Serialization

<DataContract()>
Public Class Customer
    <DataMember()>
    Public FirstName As String

    <DataMember()>
    Public LastName As String
End Class

<ServiceContract()>
Public Interface IMyCustomDataContractService
    <OperationContract()>
    Function HelloFirstName(ByVal cust As Customer) As String

    <OperationContract()>
    Function HelloFullName(ByVal cust As Customer) As String
End Interface