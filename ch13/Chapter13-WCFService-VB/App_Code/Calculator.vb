' NOTE: You can use the "Rename" command on the context menu to change the class name "Calculator" in code, svc and config file together.
Public Class Calculator
    Implements ICalculator

    Public Function Add(a As Integer, b As Integer) As Integer Implements ICalculator.Add
        Return (a + b)
    End Function

    Public Function Divide(a As Integer, b As Integer) As Integer Implements ICalculator.Divide
        Return (a / b)
    End Function

    Public Function Multiply(a As Integer, b As Integer) As Integer Implements ICalculator.Multiply
        Return (a * b)
    End Function

    Public Function Subtract(a As Integer, b As Integer) As Integer Implements ICalculator.Subtract
        Return (a - b)
    End Function
End Class