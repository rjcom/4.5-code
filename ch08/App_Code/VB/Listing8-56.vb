Imports System
Imports System.CodeDom
Imports System.Web.Compilation
Imports System.Web.UI

Namespace Wrox.VB

    <ExpressionPrefix("MyCustomExpression")>
    <ExpressionEditor("MyCustomExpressionEditor")>
    Public Class MyFirstCustomExpression
        Inherits ExpressionBuilder

        Public Overrides Function GetCodeExpression(ByVal entry As BoundPropertyEntry,
            ByVal parsedData As Object, ByVal context As ExpressionBuilderContext) _
            As System.CodeDom.CodeExpression

            Return New CodeCastExpression("Int64", New CodePrimitiveExpression(1000))
        End Function
    End Class

End Namespace
