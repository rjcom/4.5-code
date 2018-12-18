using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CustomerRepository
/// </summary>
public  class CustomerRepository
{
    CustomerContext _context = new CustomerContext();

    public IEnumerable<Customer> SelectCustomers([System.Web.ModelBinding.QueryString] int? id)
    {
        if (id.HasValue)
            return _context.Customer.Where(c => c.ID == id).AsEnumerable();
        else
            return _context.Customer.AsEnumerable();
    }
}