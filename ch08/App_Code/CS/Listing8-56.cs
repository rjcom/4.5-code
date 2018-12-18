using System;
using System.CodeDom;
using System.Web.Compilation;
using System.Web.UI;

namespace Wrox.CS
{
[ExpressionPrefix("MyFirstCustomExpression")]
[ExpressionEditor("MyFirstCustomExpressionEditor")]
public class MyFirstCustomExpression : ExpressionBuilder
{
    public override System.CodeDom.CodeExpression
        GetCodeExpression(BoundPropertyEntry entry, object parsedData,
            ExpressionBuilderContext context)
    {
        return new CodeCastExpression("Int64", 
            new CodePrimitiveExpression(1000));
    }
}
}
