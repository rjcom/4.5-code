Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols

<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1,
  EmitConformanceClaims:=True)> _
Public Class HelloWorldAsyncService
    Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function HelloWorld() As String
        System.Threading.Thread.Sleep(1000)
        Return "Hello World"
    End Function
End Class