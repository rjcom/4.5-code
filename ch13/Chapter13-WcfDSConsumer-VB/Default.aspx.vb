Imports AWServiceReference

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object,
      ByVal e As System.EventArgs) Handles Me.Load

        Dim svc As New AdventureWorksEntities(New  _
            Uri("http://localhost:4113/Adventure WorksDataService.svc"))
        'GridView1.DataSource = svc.Customers
        'GridView1.DataBind()

        Dim query = svc.Customers.Where(Function(w) w.CompanyName.Contains("Bike"))

        GridView1.DataSource = svc.Customers
        GridView1.DataBind()
    End Sub
End Class