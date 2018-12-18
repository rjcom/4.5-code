Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Data.SqlClient
Imports System.Data

<WebService(Namespace:="http://adventureworks/customers", Name:="Customers")> _
<WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Public Class Customers
    Inherits System.Web.Services.WebService

    <WebMethod()> _
    Public Function GetCustomers() As DataSet
        Dim conn As SqlConnection
        Dim myDataAdapter As SqlDataAdapter
        Dim myDataSet As DataSet
        Dim cmdString As String = "Select * From SalesLT.Customer"

        conn = New SqlConnection("Server=(LocalDB)\v11.0;integrated security=True;attachdbfilename=|DataDirectory|\AdventureWorksLT2012_Data.mdf;")
        myDataAdapter = New SqlDataAdapter(cmdString, conn)

        myDataSet = New DataSet()
        myDataAdapter.Fill(myDataSet, "Customers")

        Return myDataSet
    End Function
End Class