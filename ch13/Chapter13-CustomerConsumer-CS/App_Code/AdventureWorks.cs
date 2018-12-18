﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

public partial class Address
{
    public Address()
    {
        this.CustomerAddresses = new HashSet<CustomerAddress>();
        this.SalesOrderHeaders = new HashSet<SalesOrderHeader>();
        this.SalesOrderHeaders1 = new HashSet<SalesOrderHeader>();
    }

    public int AddressID { get; set; }
    public string AddressLine1 { get; set; }
    public string AddressLine2 { get; set; }
    public string City { get; set; }
    public string StateProvince { get; set; }
    public string CountryRegion { get; set; }
    public string PostalCode { get; set; }
    public System.Guid rowguid { get; set; }
    public System.DateTime ModifiedDate { get; set; }

    public virtual ICollection<CustomerAddress> CustomerAddresses { get; set; }
    public virtual ICollection<SalesOrderHeader> SalesOrderHeaders { get; set; }
    public virtual ICollection<SalesOrderHeader> SalesOrderHeaders1 { get; set; }
}

public partial class BuildVersion
{
    public byte SystemInformationID { get; set; }
    public string Database_Version { get; set; }
    public System.DateTime VersionDate { get; set; }
    public System.DateTime ModifiedDate { get; set; }
}

public partial class Customer
{
    public Customer()
    {
        this.CustomerAddresses = new HashSet<CustomerAddress>();
        this.SalesOrderHeaders = new HashSet<SalesOrderHeader>();
    }

    public int CustomerID { get; set; }
    public bool NameStyle { get; set; }
    public string Title { get; set; }
    public string FirstName { get; set; }
    public string MiddleName { get; set; }
    public string LastName { get; set; }
    public string Suffix { get; set; }
    public string CompanyName { get; set; }
    public string SalesPerson { get; set; }
    public string EmailAddress { get; set; }
    public string Phone { get; set; }
    public string PasswordHash { get; set; }
    public string PasswordSalt { get; set; }
    public System.Guid rowguid { get; set; }
    public System.DateTime ModifiedDate { get; set; }

    public virtual ICollection<CustomerAddress> CustomerAddresses { get; set; }
    public virtual ICollection<SalesOrderHeader> SalesOrderHeaders { get; set; }
}

public partial class CustomerAddress
{
    public int CustomerID { get; set; }
    public int AddressID { get; set; }
    public string AddressType { get; set; }
    public System.Guid rowguid { get; set; }
    public System.DateTime ModifiedDate { get; set; }

    public virtual Address Address { get; set; }
    public virtual Customer Customer { get; set; }
}

public partial class ErrorLog
{
    public int ErrorLogID { get; set; }
    public System.DateTime ErrorTime { get; set; }
    public string UserName { get; set; }
    public int ErrorNumber { get; set; }
    public Nullable<int> ErrorSeverity { get; set; }
    public Nullable<int> ErrorState { get; set; }
    public string ErrorProcedure { get; set; }
    public Nullable<int> ErrorLine { get; set; }
    public string ErrorMessage { get; set; }
}

public partial class Product
{
    public Product()
    {
        this.SalesOrderDetails = new HashSet<SalesOrderDetail>();
    }

    public int ProductID { get; set; }
    public string Name { get; set; }
    public string ProductNumber { get; set; }
    public string Color { get; set; }
    public decimal StandardCost { get; set; }
    public decimal ListPrice { get; set; }
    public string Size { get; set; }
    public Nullable<decimal> Weight { get; set; }
    public Nullable<int> ProductCategoryID { get; set; }
    public Nullable<int> ProductModelID { get; set; }
    public System.DateTime SellStartDate { get; set; }
    public Nullable<System.DateTime> SellEndDate { get; set; }
    public Nullable<System.DateTime> DiscontinuedDate { get; set; }
    public byte[] ThumbNailPhoto { get; set; }
    public string ThumbnailPhotoFileName { get; set; }
    public System.Guid rowguid { get; set; }
    public System.DateTime ModifiedDate { get; set; }

    public virtual ProductCategory ProductCategory { get; set; }
    public virtual ProductModel ProductModel { get; set; }
    public virtual ICollection<SalesOrderDetail> SalesOrderDetails { get; set; }
}

public partial class ProductCategory
{
    public ProductCategory()
    {
        this.Products = new HashSet<Product>();
        this.ProductCategory1 = new HashSet<ProductCategory>();
    }

    public int ProductCategoryID { get; set; }
    public Nullable<int> ParentProductCategoryID { get; set; }
    public string Name { get; set; }
    public System.Guid rowguid { get; set; }
    public System.DateTime ModifiedDate { get; set; }

    public virtual ICollection<Product> Products { get; set; }
    public virtual ICollection<ProductCategory> ProductCategory1 { get; set; }
    public virtual ProductCategory ProductCategory2 { get; set; }
}

public partial class ProductDescription
{
    public ProductDescription()
    {
        this.ProductModelProductDescriptions = new HashSet<ProductModelProductDescription>();
    }

    public int ProductDescriptionID { get; set; }
    public string Description { get; set; }
    public System.Guid rowguid { get; set; }
    public System.DateTime ModifiedDate { get; set; }

    public virtual ICollection<ProductModelProductDescription> ProductModelProductDescriptions { get; set; }
}

public partial class ProductModel
{
    public ProductModel()
    {
        this.Products = new HashSet<Product>();
        this.ProductModelProductDescriptions = new HashSet<ProductModelProductDescription>();
    }

    public int ProductModelID { get; set; }
    public string Name { get; set; }
    public string CatalogDescription { get; set; }
    public System.Guid rowguid { get; set; }
    public System.DateTime ModifiedDate { get; set; }

    public virtual ICollection<Product> Products { get; set; }
    public virtual ICollection<ProductModelProductDescription> ProductModelProductDescriptions { get; set; }
}

public partial class ProductModelProductDescription
{
    public int ProductModelID { get; set; }
    public int ProductDescriptionID { get; set; }
    public string Culture { get; set; }
    public System.Guid rowguid { get; set; }
    public System.DateTime ModifiedDate { get; set; }

    public virtual ProductDescription ProductDescription { get; set; }
    public virtual ProductModel ProductModel { get; set; }
}

public partial class SalesOrderDetail
{
    public int SalesOrderID { get; set; }
    public int SalesOrderDetailID { get; set; }
    public short OrderQty { get; set; }
    public int ProductID { get; set; }
    public decimal UnitPrice { get; set; }
    public decimal UnitPriceDiscount { get; set; }
    public decimal LineTotal { get; set; }
    public System.Guid rowguid { get; set; }
    public System.DateTime ModifiedDate { get; set; }

    public virtual Product Product { get; set; }
    public virtual SalesOrderHeader SalesOrderHeader { get; set; }
}

public partial class SalesOrderHeader
{
    public SalesOrderHeader()
    {
        this.SalesOrderDetails = new HashSet<SalesOrderDetail>();
    }

    public int SalesOrderID { get; set; }
    public byte RevisionNumber { get; set; }
    public System.DateTime OrderDate { get; set; }
    public System.DateTime DueDate { get; set; }
    public Nullable<System.DateTime> ShipDate { get; set; }
    public byte Status { get; set; }
    public bool OnlineOrderFlag { get; set; }
    public string SalesOrderNumber { get; set; }
    public string PurchaseOrderNumber { get; set; }
    public string AccountNumber { get; set; }
    public int CustomerID { get; set; }
    public Nullable<int> ShipToAddressID { get; set; }
    public Nullable<int> BillToAddressID { get; set; }
    public string ShipMethod { get; set; }
    public string CreditCardApprovalCode { get; set; }
    public decimal SubTotal { get; set; }
    public decimal TaxAmt { get; set; }
    public decimal Freight { get; set; }
    public decimal TotalDue { get; set; }
    public string Comment { get; set; }
    public System.Guid rowguid { get; set; }
    public System.DateTime ModifiedDate { get; set; }

    public virtual Address Address { get; set; }
    public virtual Address Address1 { get; set; }
    public virtual Customer Customer { get; set; }
    public virtual ICollection<SalesOrderDetail> SalesOrderDetails { get; set; }
}
