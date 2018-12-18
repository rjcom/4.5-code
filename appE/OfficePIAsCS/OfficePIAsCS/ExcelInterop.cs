using Microsoft.Office.Interop.Excel;
using System.Collections.Generic;

namespace OfficePIAsCS
{
    public class Account
    {
        public int ID { get; set; }
        public double Balance { get; set; }
    }

    public class ExcelInterop
    {
        public static void DisplayInExcel(IEnumerable<Account> accounts)
        {
            var excelApp = new Application();
            excelApp.Visible = true;
            excelApp.Workbooks.Add();

            Worksheet workSheet = excelApp.ActiveSheet;
            workSheet.Cells[1, "A"] = "ID Number";
            workSheet.Cells[1, "B"] = "Current Balance";

            var row = 1;
            foreach (var acct in accounts)
            {
                row++;
                workSheet.Cells[row, "A"] = acct.ID;
                workSheet.Cells[row, "B"] = acct.Balance;
            }

            workSheet.Columns[1].AutoFit();
            workSheet.Columns[2].AutoFit();
        }
    }
}
