using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data.Spatial;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer
{
	public Customer()
	{
		
	}

    [ScaffoldColumn(false)]
    public int ID { get; set; }
    [Required()]
    public string FirstName { get; set; }
    
    
    [UIHint("LastName")]
    [Required]
    [Display(Name = "Last Part of Name")]
    [RegularExpression("a*")]    
    public string LastName { get; set; }

    public DateTime BirthDate { get; set; }    
}