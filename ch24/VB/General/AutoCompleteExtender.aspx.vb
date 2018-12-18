Imports System.Data
Imports System.Data.SqlClient
Imports System.Collections.Generic

Partial Class AutoCompleteExtender
    Inherits System.Web.UI.Page

    <System.Web.Services.WebMethodAttribute(),
     System.Web.Script.Services.ScriptMethodAttribute()>
    Public Shared Function GetCompletionList(ByVal prefixText As String,
      ByVal count As Integer) As String()
        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim cmdString As String = _
           "Select CompanyName from Customers WHERE CompanyName LIKE @prefixText"
        conn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\NORTHWND.MDF;Integrated Security=True;User Instance=True")
        cmd = New SqlCommand(cmdString, conn)
        cmd.Parameters.AddWithValue("@prefixText", prefixText & "%")
        conn.Open()

        Dim myReader As SqlDataReader
        Dim returnData As List(Of String) = New List(Of String)
        myReader = cmd.ExecuteReader(CommandBehavior.CloseConnection)

        While myReader.Read()
            returnData.Add(myReader("CompanyName").ToString())
        End While

        Return returnData.ToArray()
    End Function
End Class
