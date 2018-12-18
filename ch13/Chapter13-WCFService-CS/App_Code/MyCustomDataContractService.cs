using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

public class MyCustomDataContractService : IMyCustomDataContractService
{
    public string HelloFirstName(Customer cust)
    {
        return "Hello " + cust.Firstname;
    }

    public string HelloFullName(Customer cust)
    {
        return "Hello " + cust.Firstname + " " + cust.Lastname;
    }
}