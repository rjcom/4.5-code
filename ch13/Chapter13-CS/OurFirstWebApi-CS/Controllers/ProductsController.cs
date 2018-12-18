using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using OurFirstWebApi_CS.Models;

namespace OurFirstWebApi_CS.Controllers
{
public class ProductsController : ApiController
{
    private AdventureWorksEntities db = new AdventureWorksEntities();

    public ProductsController()
    {
        db.Configuration.ProxyCreationEnabled = false;
    }

    // GET api/Products
    public IEnumerable<Product> GetProducts()
    {
        var products = db.Products.Include(p => p.ProductCategory).Include(p => p.ProductModel);
        return products.AsEnumerable();
    }

    // GET api/Products/5
    public Product GetProduct(int id)
    {
        Product product = db.Products.Find(id);
        if (product == null)
        {
            throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound));
        }

        return product;
    }

    // PUT api/Products/5
    public HttpResponseMessage PutProduct(int id, Product product)
    {
        if (ModelState.IsValid && id == product.ProductID)
        {
            db.Entry(product).State = EntityState.Modified;

            try
            {
                db.SaveChanges();
            }
            catch (DbUpdateConcurrencyException)
            {
                return Request.CreateResponse(HttpStatusCode.NotFound);
            }

            return Request.CreateResponse(HttpStatusCode.OK);
        }
        else
        {
            return Request.CreateResponse(HttpStatusCode.BadRequest);
        }
    }

    // POST api/Products
    public HttpResponseMessage PostProduct(Product product)
    {
        if (ModelState.IsValid)
        {
            db.Products.Add(product);
            db.SaveChanges();

            HttpResponseMessage response = Request.CreateResponse(HttpStatusCode.Created, product);
            response.Headers.Location = new Uri(Url.Link("DefaultApi", new { id = product.ProductID }));
            return response;
        }
        else
        {
            return Request.CreateResponse(HttpStatusCode.BadRequest);
        }
    }

    // DELETE api/Products/5
    public HttpResponseMessage DeleteProduct(int id)
    {
        Product product = db.Products.Find(id);
        if (product == null)
        {
            return Request.CreateResponse(HttpStatusCode.NotFound);
        }

        db.Products.Remove(product);

        try
        {
            db.SaveChanges();
        }
        catch (DbUpdateConcurrencyException)
        {
            return Request.CreateResponse(HttpStatusCode.NotFound);
        }

        return Request.CreateResponse(HttpStatusCode.OK, product);
    }

    protected override void Dispose(bool disposing)
    {
        db.Dispose();
        base.Dispose(disposing);
    }
}
}