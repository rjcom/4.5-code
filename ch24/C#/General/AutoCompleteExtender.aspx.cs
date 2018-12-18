using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

public partial class AutoCompleteExtender : System.Web.UI.Page
{
    [System.Web.Services.WebMethodAttribute(),
     System.Web.Script.Services.ScriptMethodAttribute()]
    public static string[] GetCompletionList(string prefixText, int count,
       string contextKey)
    {
        SqlConnection conn;
        SqlCommand cmd;
        string cmdString =
           "SELECT CompanyName FROM Customers WHERE CompanyName LIKE @prefixText";
        conn = new
            SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\NORTHWND.MDF;Integrated Security=True;User Instance=True");
        conn.Open();
        cmd = new SqlCommand(cmdString, conn);
        cmd.Parameters.AddWithValue("@prefixText", prefixText + "%");
        SqlDataReader myReader;
        List<string> returnData = new List<string>();

        myReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        while (myReader.Read())
        {
            returnData.Add(myReader["CompanyName"].ToString());
        }

        return returnData.ToArray();
    }
}
