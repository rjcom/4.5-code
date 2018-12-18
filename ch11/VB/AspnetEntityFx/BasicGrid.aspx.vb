Public Class BasicGrid
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim adventureWorks2012_DataEntities As New AdventureWorks2012_DataEntities()

        Dim query = From emp In adventureWorks2012_DataEntities.Employees
                Select emp

        GridView1.DataSource = query.ToList()
        GridView1.DataBind()
    End Sub

End Class