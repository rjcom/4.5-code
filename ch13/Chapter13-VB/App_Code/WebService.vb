Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols

'<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.None)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class WebService
    Inherits System.Web.Services.WebService

    <WebMethod(MessageName:="HelloWorld")> _
    Public Function HelloWorld() As String
        Return "Hello World"
    End Function
    <WebMethod(MessageName:="HelloWorldWithFirstName")> _
    Public Function HelloWorld(ByVal FirstName As String) As String
        Return "Hello " & FirstName
    End Function
End Class