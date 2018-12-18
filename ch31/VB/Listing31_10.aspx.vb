Imports System.Net.Http
Imports Newtonsoft.Json
Imports System.Threading.Tasks
Imports System.Threading

Partial Class VB_Listing31_10
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        RegisterAsyncTask(New PageAsyncTask(Function() GetCustomersAsync(Context.Request.TimedOutToken)))
    End Sub

    Public Async Function GetCustomersAsync(ByVal cancelToken As CancellationToken) As Task
        Using client = New HttpClient()
            Dim url As String = "http://" & Request.Url.Host & ":" & Request.Url.Port & Response.ApplyAppPathModifier("~/Common/SlowCustomers.ashx")
            Dim res = Await client.GetAsync(url, cancelToken)
            Dim customersJson = Await res.Content.ReadAsStringAsync()
            Dim customers = JsonConvert.DeserializeObject(Of IEnumerable(Of Customer))(customersJson)
            results.DataSource = customers
            results.DataBind()
        End Using
    End Function
    Protected Sub Page_Error(sender As Object, e As EventArgs) Handles Me.Error
        Dim exc As Exception = Server.GetLastError()
        If TypeOf exc Is TimeoutException Then
            Throw exc
        End If
    End Sub
End Class
