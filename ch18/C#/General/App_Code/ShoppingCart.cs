using System;

[Serializable]
public class ShoppingCart
{
    private string PID;
    private string CompanyProductName;
    private int Number;
    private decimal Price;
    private DateTime DateAdded;

    public ShoppingCart() { }

    public string ProductID
    {
        get { return PID; }
        set { PID = value; }
    }

    public string ProductName
    {
        get { return CompanyProductName; }
        set { CompanyProductName = value; }
    }

    public int NumberSelected
    {
        get { return Number; }
        set { Number = value; }
    }

    public decimal ItemPrice
    {
        get { return Price; }
        set { Price = value; }
    }

    public DateTime DateItemAdded
    {
        get { return DateAdded; }
        set { DateAdded = value; }
    }
}
