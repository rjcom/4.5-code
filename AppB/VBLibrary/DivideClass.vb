Public Class DivideClass
    Public Function DivideNumber(Numerator As Double, _
                             Denominator As Double) As Double

        If ((Numerator > 1000) Or (Denominator > 1000)) Then
            Err.Raise(vbObjectError + 1, _
                      "DivideComponent:Divide.DivideNumber", _
                      "Numerator and denominator both have to " + _
                      "be less than or equal to 1000.")
        End If
        DivideNumber = Numerator / Denominator
    End Function
End Class
