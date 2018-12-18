using System.Runtime.Serialization;
using System.ServiceModel;
          
[DataContract]
public class Customer
{
    [DataMember]
    public string Firstname;
          
    [DataMember]
    public string Lastname;
}
          
[ServiceContract(Namespace="http://jasongaylord.com/")]
public interface IMyCustomDataContractService
{
    [OperationContract]
    string HelloFirstName(Customer cust);
          
    [OperationContract]
    string HelloFullName(Customer cust);
}