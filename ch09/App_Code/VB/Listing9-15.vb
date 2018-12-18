Imports System.Collections.Generic
Imports System.Data.Spatial
Imports System.Globalization
Imports System.Linq
Imports System.Web
Imports System.Web.ModelBinding

Namespace VB
   
    Public Class MyDateTimeBinder
        Implements IModelBinder
        Public Function BindModel(modelBindingExecutionContext As ModelBindingExecutionContext, bindingContext As ModelBindingContext) As Boolean Implements IModelBinder.BindModel
            Dim valueProviderResult = bindingContext.ValueProvider.GetValue(bindingContext.ModelName)
            Dim inputdate = If(valueProviderResult IsNot Nothing, valueProviderResult.AttemptedValue, Nothing)
            Dim newDate As New DateTime()
            Dim success As Boolean = DateTime.TryParse(inputdate, CultureInfo.GetCultureInfo("en-GB"), DateTimeStyles.None, newDate)
            bindingContext.Model = newDate
            Return bindingContext.Model IsNot Nothing
        End Function
    End Class
    Public Class MyDateTimeProvider
        Inherits System.Web.ModelBinding.ModelBinderProvider
        Public Overrides Function GetBinder(modelBindingExecutionContext As ModelBindingExecutionContext, bindingContext As ModelBindingContext) As IModelBinder
            If bindingContext.ModelType = GetType(DateTime) Then
                Return New MyDateTimeBinder()
            End If
            Return Nothing
        End Function
    End Class
End Namespace