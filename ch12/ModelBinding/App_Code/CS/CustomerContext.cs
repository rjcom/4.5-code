using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for CustomerContext
/// </summary>
public class CustomerContext
{
    public List<Customer> Customer { get; set; }
    public CustomerContext()
    {
        //
        // TODO: Add constructor logic here
        //
        Customer = new List<Customer>();
        Customer.Add(new Customer() { ID = 0, FirstName = "Maria", LastName = " Anders", BirthDate=DateTime.Now });
        Customer.Add(new Customer() { ID = 1, FirstName = "Ana ", LastName = " Trujillo", BirthDate = DateTime.Now });
        Customer.Add(new Customer() { ID = 2, FirstName = "Antonio ", LastName = " Moreno", BirthDate = DateTime.Now });
        Customer.Add(new Customer() { ID = 3, FirstName = "Thomas ", LastName = " Hardy", BirthDate = DateTime.Now });
        Customer.Add(new Customer() { ID = 4, FirstName = "Christina ", LastName = " Berglund", BirthDate = DateTime.Now });
        Customer.Add(new Customer() { ID = 5, FirstName = "Hanna ", LastName = "Moos", BirthDate = DateTime.Now });
        Customer.Add(new Customer() { ID = 6, FirstName = "Hanna ", LastName = "Moos", BirthDate = DateTime.Now });
    }

}