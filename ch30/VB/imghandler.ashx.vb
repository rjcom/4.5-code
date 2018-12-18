Imports System.Web
Imports System.Web.Services

Public Class imghandler
    Implements System.Web.IHttpHandler

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        'Logic to retrieve the image file
        context.Response.ContentType = "image/jpeg"
        context.Response.WriteFile("Garden.jpg")
    End Sub

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class