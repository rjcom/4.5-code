Public Class Inheritance
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim adventureWorks2012_DataEntities As New AdventureWorks2012_DataEntities2()
        Dim query = From v In adventureWorks2012_DataEntities.Vendors.OfType(Of InactiveVendor)()
                      Select v

        GridView1.DataSource = query.ToList()
        GridView1.DataBind()
    End Sub

End Class