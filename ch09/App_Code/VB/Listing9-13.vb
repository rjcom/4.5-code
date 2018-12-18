Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.ModelBinding

Namespace VB
    
    Public Class AggregateValueProvider
        Implements IValueProvider
        Implements IUnvalidatedValueProvider
        Private ReadOnly _valueProviders As New List(Of IUnvalidatedValueProvider)()

        Public Sub New(modelBindingExecutionContext As ModelBindingExecutionContext)
            _valueProviders.Add(New FormValueProvider(modelBindingExecutionContext))
            _valueProviders.Add(New QueryStringValueProvider(modelBindingExecutionContext))
        End Sub

        Public Function ContainsPrefix(prefix As String) As Boolean Implements IValueProvider.ContainsPrefix
            Return _valueProviders.Any(Function(vp) vp.ContainsPrefix(prefix))
        End Function

        Public Function GetValue(key As String) As ValueProviderResult Implements IValueProvider.GetValue
            Return GetValue(key, False)
        End Function

        Public Function GetValue(key As String, skipValidation As Boolean) As ValueProviderResult Implements IUnvalidatedValueProvider.GetValue
            Return _valueProviders.[Select](Function(vp) vp.GetValue(key, skipValidation)).LastOrDefault()
        End Function
    End Class

    Public Class AggregateValueAttribute
        Inherits ValueProviderSourceAttribute
        Public Overrides Function GetValueProvider(modelBindingExecutionContext As ModelBindingExecutionContext) As IValueProvider
            Return New AggregateValueProvider(modelBindingExecutionContext)
        End Function
    End Class
End Namespace