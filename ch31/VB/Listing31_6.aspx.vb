Imports System.Net.Http
Imports Newtonsoft.Json
Imports System.Threading.Tasks

Partial Class VB_Listing31_6
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        RegisterAsyncTask(New PageAsyncTask(Function() GetCustomersAsync()))

    End Sub

    Public Async Function GetCustomersAsync() As Task
        Using client = New HttpClient()
            Dim url As String = "http://" & Request.Url.Host & ":" & Request.Url.Port & Response.ApplyAppPathModifier("~/Common/Customers.ashx")
            Dim customersJson = Await client.GetStringAsync(url)
            Dim customers = JsonConvert.DeserializeObject(Of IEnumerable(Of Customer))(customersJson)
            results.DataSource = customers
            results.DataBind()
        End Using
    End Function

End Class
