Imports System.Data
Imports System.Data.SqlClient
Imports System.IO

Partial Class DynamicPopulateExtender
    Inherits System.Web.UI.Page

    <System.Web.Services.WebMethodAttribute()>
    <System.Web.Script.Services.ScriptMethodAttribute()>
    Public Shared Function GetDynamicContent(ByVal contextKey As System.String) _
      As System.String
        Dim conn As SqlConnection
        Dim cmd As SqlCommand
        Dim cmdString As String = "Select * from Customers"

        Select Case contextKey
            Case "1"
                cmdString = "Select * from Employees"
            Case "2"
                cmdString = "Select * from Products"
        End Select

        conn = New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\NORTHWND.MDF;Integrated Security=True;User Instance=True")
        cmd = New SqlCommand(cmdString, conn)
        conn.Open()

        Dim myReader As SqlDataReader
        myReader = cmd.ExecuteReader(CommandBehavior.CloseConnection)

        Dim dt As New DataTable
        dt.Load(myReader)
        myReader.Close()

        Dim myGrid As New GridView
        myGrid.ID = "GridView1"
        myGrid.DataSource = dt
        myGrid.DataBind()

        Dim sw As New StringWriter
        Dim htw As HtmlTextWriter = New HtmlTextWriter(sw)

        myGrid.RenderControl(htw)
        htw.Close()

        Return sw.ToString()
    End Function
End Class
