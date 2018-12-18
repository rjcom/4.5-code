Public Class ManyToMany
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim adventureWorks2012_DataEntities As New AdventureWorks2012_DataEntities1()
        Dim query = From o In adventureWorks2012_DataEntities.SalesOrderHeaders
                Where o.SalesOrderDetails.Any(Function(Quantity) Quantity.OrderQty > 5)
                Select New With {Key o.PurchaseOrderNumber,
                                            Key o.Customer.CustomerID,
                                            Key o.SalesPersonID}

        GridView1.DataSource = query.ToList()
        GridView1.DataBind()
    End Sub

End Class