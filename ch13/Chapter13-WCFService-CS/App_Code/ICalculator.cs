using System.ServiceModel;

[ServiceContract]
public interface ICalculator
{
    [OperationContract]
    int Add(int a, int b);
          
    [OperationContract]
    int Subtract(int a, int b);
          
    [OperationContract]
    int Multiply(int a, int b);
          
    [OperationContract]
    int Divide(int a, int b);

    // Code removed for clarity
}