Imports System.ServiceModel

<ServiceContract()>
Public Interface ICalculator
    <OperationContract()> _
    Function Add(ByVal a As Integer, ByVal b As Integer) As Integer

    <OperationContract()> _
    Function Subtract(ByVal a As Integer, ByVal b As Integer) As Integer

    <OperationContract()> _
    Function Multiply(ByVal a As Integer, ByVal b As Integer) As Integer

    <OperationContract()> _
    Function Divide(ByVal a As Integer, ByVal b As Integer) As Integer
End Interface