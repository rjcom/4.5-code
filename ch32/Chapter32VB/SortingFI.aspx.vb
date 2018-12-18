Imports System.Globalization

Public Class SortingFI
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        System.Threading.Thread.CurrentThread.CurrentCulture = New CultureInfo("fi-FI")

        Dim myList As List(Of String) = New List(Of String)

        myList.Add("Washington D.C.")
        myList.Add("Helsinki")
        myList.Add("Moscow")
        myList.Add("Warsaw")
        myList.Add("Vienna")
        myList.Add("Tokyo")

        myList.Sort()

        For Each item As String In myList
            Response.Write(item.ToString() + "<br>")
        Next
    End Sub

End Class