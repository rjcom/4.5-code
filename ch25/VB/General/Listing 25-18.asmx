<%@ WebService Language="VB" Class="Listing_25_18" %>

Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols

<System.Web.Script.Services.ScriptService()> _
<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
Public Class Listing_25_18
    Inherits System.Web.Services.WebService
    
    <WebMethod()> _
    Public Function getLinks() As List(Of Link)
        Dim links = New List(Of Link)()
        links.Add(New Link With {.Url = "http://jquery.com/", .Text = "jQuery"})
        links.Add(New Link With {.Url = "http://jqueryui.com/", .Text = "jQuery UI"})
        links.Add(New Link With {.Url = "http://juiceui.com/", .Text = "Juice UI"})
        Return links
    End Function
    
End Class

Public Class Link
    Private _url As String
    Public Property Url() As String
        Get
            Return _url
        End Get
        Set(ByVal value As String)
            _url = value
        End Set
    End Property

    Private _text As String
    Public Property Text() As String
        Get
            Return _text
        End Get
        Set(ByVal value As String)
            _text = value
        End Set
    End Property

End Class
