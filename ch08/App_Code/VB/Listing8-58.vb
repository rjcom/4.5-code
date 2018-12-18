Imports System
Imports System.CodeDom
Imports System.Web.Compilation
Imports System.Web.UI

Namespace Wrox.VB


    <ExpressionPrefix("MyCustomExpression")>
    <ExpressionEditor("MyCustomExpressionEditor")>
    Public Class MyThirdCustomExpression
        Inherits ExpressionBuilder

        Public Overrides Function GetCodeExpression(ByVal entry As BoundPropertyEntry,
            ByVal parsedData As Object, ByVal context As ExpressionBuilderContext) _
            As System.CodeDom.CodeExpression

            Return New CodeCastExpression("Int64",
                New CodePrimitiveExpression(parsedData))
        End Function

        Public Overrides Function ParseExpression(ByVal expression As String,
            ByVal propertyType As Type,
            ByVal context As ExpressionBuilderContext) As Object

            Return expression
        End Function

        Public Overrides ReadOnly Property SupportsEvaluate As Boolean
            Get
                Return True
            End Get
        End Property

        Public Overrides Function EvaluateExpression(ByVal target As Object,
            ByVal Entry As BoundPropertyEntry, ByVal parsedData As Object,
            ByVal context As ExpressionBuilderContext) As Object

            Return parsedData
        End Function

    End Class
End Namespace

