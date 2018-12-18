using System.Collections.Generic;
namespace Wrox.CS
{
public class Customer
{
    public string CustomerID { get; set; }
    public string CompanyName { get; set; }
    public string ContactName { get; set; }
    public string ContactTitle { get; set; }
}

public class CustomerRepository
{
    public CustomerRepository()
    {
    }

    public List<Customer> Select(string customerId)
    {
        // Implement logic here to retrieve the Customer
        // data based on the methods customerId parameter
        List<Customer> _customers = new List<Customer>();
        _customers.Add(new Customer() { CompanyName = "Acme", ContactName = "Wiley Cyote", ContactTitle = "President", CustomerID = "ACMEC" });
        return _customers;
    }

    public void Insert(Customer c)
    {
        // Implement Insert logic
    }

    public void Update(Customer c)
    {
        // Implement Update logic
    }

    public void Delete(Customer c)
    {
        // Implement Delete logic
    }

}
}
