Public Class OneToMany
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim adventureWorks2012_DataEntities As New AdventureWorks2012_DataEntities()
        For Each employee In adventureWorks2012_DataEntities.Employees
            Dim li As New ListItem()
            li.Text = employee.BusinessEntityID & " "
            For Each pay In employee.EmployeePayHistories
                li.Text &= "Pay Rate: " & pay.Rate & " "
            Next pay
            BulletedList1.Items.Add(li)
        Next employee

    End Sub

End Class