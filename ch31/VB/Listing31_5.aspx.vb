Imports System.Net.Http
Imports Newtonsoft.Json

Partial Class VB_Listing31_5
    Inherits System.Web.UI.Page

    Protected Async Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Using client = New HttpClient()
            Dim url As String = "http://" & Request.Url.Host & ":" & Request.Url.Port & Response.ApplyAppPathModifier("~/Common/Customers.ashx")
            Dim customersJson = Await client.GetStringAsync(url)
            Dim customers = JsonConvert.DeserializeObject(Of IEnumerable(Of Customer))(customersJson)
            results.DataSource = customers
            results.DataBind()
        End Using
    End Sub
End Class
