<%@ WebHandler Language="VB" Class="Listing_25_13" %>

Imports System
Imports System.Web
Imports System.Web.Script.Serialization

Public Class Listing_25_13 : Implements IHttpHandler
    
    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Select context.Request.RequestType
            Case "GET"
                If context.Request("json") Is Nothing OrElse _
                    context.Request("json") <> "true" Then
                    context.Response.ContentType = "text/plain"
                    context.Response.Write(DateTime.Now.ToLongTimeString())
                Else
                    Dim json = New JavaScriptSerializer().Serialize(
                        DateTime.Now.ToLongTimeString())
                    context.Response.ContentType = "application/json"
                    context.Response.Write(json)
                End If
            Case "POST"
                context.Response.ContentType = "text/plain"
                context.Response.Write("POST at " + DateTime.Now.ToLongTimeString())
        End Select
    End Sub
 
    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class
