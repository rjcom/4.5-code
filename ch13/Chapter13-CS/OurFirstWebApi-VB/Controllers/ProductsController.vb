Imports System.Data.Entity
Imports System.Data.Entity.Infrastructure
Imports System.Net
Imports System.Net.Http
Imports System.Web.Http
Namespace OurFirstWebApi_VB
    Public Class ProductsController
        Inherits System.Web.Http.ApiController

        Private db As New AdventureWorksEntities

        ' GET api/Products
        Function GetProducts() As IEnumerable(Of Product)
            Dim products = db.Products.Include(Function(p) p.ProductCategory).Include(Function(p) p.ProductModel)
            Return products.AsEnumerable()
        End Function

        ' GET api/Products/5
        Function GetProduct(ByVal id As Integer) As Product
            Dim product As Product = db.Products.Find(id)
            If IsNothing(product) Then
                Throw New HttpResponseException(Request.CreateResponse(HttpStatusCode.NotFound))
            End If
            Return product
        End Function

        ' PUT api/Products/5
        Function PutProduct(ByVal id As Integer, ByVal product As Product) As HttpResponseMessage
            If ModelState.IsValid And id = product.ProductID Then
                db.Entry(product).State = EntityState.Modified

                Try
                    db.SaveChanges()
                Catch ex As DbUpdateConcurrencyException
                    Return Request.CreateResponse(HttpStatusCode.NotFound)
                End Try

                Return Request.CreateResponse(HttpStatusCode.OK)
            Else
                Return Request.CreateResponse(HttpStatusCode.BadRequest)
            End If
        End Function

        ' POST api/Products
        Function PostProduct(ByVal product As Product) As HttpResponseMessage
            If ModelState.IsValid Then
                db.Products.Add(product)
                db.SaveChanges()

                Dim response As HttpResponseMessage = Request.CreateResponse(HttpStatusCode.Created, product)
                response.Headers.Location = New Uri(Url.Link("DefaultApi", New With {.id = product.ProductID}))
                Return response
            Else
                Return Request.CreateResponse(HttpStatusCode.BadRequest)
            End If
        End Function

        ' DELETE api/Products/5
        Function DeleteProduct(ByVal id As Integer) As HttpResponseMessage
            Dim product As Product = db.Products.Find(id)
            If IsNothing(product) Then
                Return Request.CreateResponse(HttpStatusCode.NotFound)
            End If

            db.Products.Remove(product)

            Try
                db.SaveChanges()
            Catch ex As Exception
                Return Request.CreateResponse(HttpStatusCode.NotFound)
            End Try

            Return Request.CreateResponse(HttpStatusCode.OK, product)
        End Function

        Protected Overrides Sub Dispose(ByVal disposing As Boolean)
            db.Dispose()
            MyBase.Dispose(disposing)
        End Sub
    End Class
End Namespace