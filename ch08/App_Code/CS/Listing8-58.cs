using System;
using System.CodeDom;
using System.Web.Compilation;
using System.Web.UI;

namespace Wrox.CS
{
[ExpressionPrefix("MyThirdCustomExpression")]
[ExpressionEditor("MyThirdCustomExpressionEditor")]
public class MyThirdCustomExpression : ExpressionBuilder
{
    public override System.CodeDom.CodeExpression
        GetCodeExpression(BoundPropertyEntry entry, object parsedData,
            ExpressionBuilderContext context)
    {
        return new CodeCastExpression("Int64",
            new CodePrimitiveExpression(parsedData));
    }

    public override object ParseExpression
        (string expression, Type propertyType, 
         ExpressionBuilderContext context)
    {
        return expression;
    }

    public override bool SupportsEvaluate
    {
        get
        {
            return true;
        }
    }

    public override object EvaluateExpression(object target,
        BoundPropertyEntry entry, object parsedData,
        ExpressionBuilderContext context)
    {
        return parsedData;
    }
}
}
