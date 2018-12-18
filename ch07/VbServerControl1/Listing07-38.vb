Imports System
Imports System.ComponentModel
Imports System.Globalization

Public Class Name

    Private _first As String
    Private _last As String

    Public Sub New(ByVal first As String, ByVal last As String)
        _first = first
        _last = last
    End Sub

    Public Property First() As String
        Get
            Return _first
        End Get
        Set(ByVal value As String)
            _first = value
        End Set
    End Property

    Public Property Last() As String
        Get
            Return _last
        End Get
        Set(ByVal value As String)
            _last = value
        End Set
    End Property
End Class

Public Class NameConverter
    Inherits TypeConverter

    Public Overrides Function CanConvertFrom(ByVal context As  _
       ITypeDescriptorContext, ByVal sourceType As Type) As Boolean

        If (sourceType Is GetType(String)) Then
            Return True
        End If

        Return MyBase.CanConvertFrom(context, sourceType)
    End Function

    Public Overrides Function ConvertFrom( _
            ByVal context As ITypeDescriptorContext, _
            ByVal culture As CultureInfo, ByVal value As Object) As Object
        If (value Is GetType(String)) Then
            Dim v As String() = (CStr(value).Split(New [Char]() {" "c}))
            Return New Name(v(0), v(1))
        End If
        Return MyBase.ConvertFrom(context, culture, value)
    End Function

    Public Overrides Function ConvertTo( _
            ByVal context As ITypeDescriptorContext, _
            ByVal culture As CultureInfo, ByVal value As Object, _
            ByVal destinationType As Type) As Object
        If (destinationType Is GetType(String)) Then
            Return (CType(value, Name).First + " " + (CType(value, Name).Last))
        End If
        Return MyBase.ConvertTo(context, culture, value, destinationType)
    End Function
End Class