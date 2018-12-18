using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

// NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Calculator" in code, svc and config file together.
public class Calculator : ICalculator
{
    public int Add(int a, int b)
    {
        return (a + b);
    }

    public int Subtract(int a, int b)
    {
        return (a - b);
    }

    public int Multiply(int a, int b)
    {
        return (a * b);
    }

    public int Divide(int a, int b)
    {
        return (a / b);
    }
}