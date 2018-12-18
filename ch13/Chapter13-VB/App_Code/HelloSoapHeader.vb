Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<WebService(Namespace:="http://tempuri.org/")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1, EmitConformanceClaims:=True)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class HelloSoapHeader
    Inherits System.Web.Services.WebService

    Public myHeader As HelloHeader

    <WebMethod(), SoapHeader("myHeader")> _
    Public Function HelloWorld() As String
        If (myHeader Is Nothing) Then
            Return "Hello World"
        Else
            Return "Hello " & myHeader.Username & ". " & _
               "<br>Your password is: " & myHeader.Password
        End If
    End Function
End Class