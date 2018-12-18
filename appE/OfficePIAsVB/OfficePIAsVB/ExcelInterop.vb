Public Class ExcelInterop

    Public Shared Sub DisplayInExcel(ByVal accounts As IEnumerable(Of Account))
        Dim excelApp As New Microsoft.Office.Interop.Excel.Application()
        excelApp.Visible = True
        excelApp.Workbooks.Add()

        Dim workSheet As Microsoft.Office.Interop.Excel.Worksheet = excelApp.ActiveSheet
        workSheet.Cells(1, "A") = "ID Number"
        workSheet.Cells(1, "B") = "Current Balance"

        Dim row = 1

        For Each acct In accounts
            row = row + 1
            workSheet.Cells(row, "A") = acct.ID
            workSheet.Cells(row, "B") = acct.Balance
        Next

        workSheet.Columns(1).AutoFit()
        workSheet.Columns(2).AutoFit()

    End Sub
End Class

Public Class Account
    Public ID As Integer
    Public Balance As Double
End Class
