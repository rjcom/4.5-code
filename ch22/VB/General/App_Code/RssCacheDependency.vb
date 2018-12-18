Imports System
Imports System.Web
Imports System.Threading
Imports System.Web.Caching
Imports System.Xml

Public Class RssCacheDependency
    Inherits CacheDependency

    Dim backgroundThread As Timer
    Dim howOften As Integer = 900
    Dim RSS As XmlDocument
    Dim RSSUrl As String

    Public Sub New(ByVal URL As String, ByVal polling As Integer)
        howOften = polling
        RSSUrl = URL
        RSS = RetrieveRSS(RSSUrl)

        If backgroundThread Is Nothing Then
            backgroundThread = New Timer( _
                New TimerCallback(AddressOf CheckDependencyCallback), 
                Me, (howOften * 1000), (howOften * 1000))
        End If
    End Sub

    Function RetrieveRSS(ByVal URL As String) As XmlDocument
        Dim retVal As New XmlDocument
        retVal.Load(URL)
        Return retVal
    End Function

    Public Sub CheckDependencyCallback(ByVal Sender As Object)
        Dim CacheDepends As RssCacheDependency = 
            CType(Sender, RssCacheDependency)
        Dim NewRSS As XmlDocument = RetrieveRSS(RSSUrl)
        If Not NewRSS.OuterXml = RSS.OuterXml Then
            CacheDepends.NotifyDependencyChanged(CacheDepends, EventArgs.Empty)
        End If
    End Sub

    Protected Overrides Sub DependencyDispose()
        backgroundThread = Nothing
        MyBase.DependencyDispose()
    End Sub

    Public ReadOnly Property Document() As XmlDocument
        Get
            Return RSS
        End Get
    End Property
End Class
