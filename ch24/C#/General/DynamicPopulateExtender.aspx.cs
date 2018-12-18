using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DynamicPopulateExtender : System.Web.UI.Page
{
    [System.Web.Services.WebMethodAttribute(),
     System.Web.Script.Services.ScriptMethodAttribute()]
    public static string GetDynamicContent(string contextKey)
    {
        SqlConnection conn;
        SqlCommand cmd;
        string cmdString = "Select * from Customers";

        switch (contextKey)
        {
            case ("1"):
                cmdString = "Select * from Employees";
                break;
            case ("2"):
                cmdString = "Select * from Products";
                break;
        }

        conn = new
            SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\NORTHWND.MDF;Integrated Security=True;User Instance=True");
        cmd = new SqlCommand(cmdString, conn);
        conn.Open();

        SqlDataReader myReader;
        myReader = cmd.ExecuteReader(CommandBehavior.CloseConnection);

        DataTable dt = new DataTable();
        dt.Load(myReader);
        myReader.Close();

        GridView myGrid = new GridView();
        myGrid.ID = "GridView1";
        myGrid.DataSource = dt;
        myGrid.DataBind();

        StringWriter sw = new StringWriter();
        HtmlTextWriter htw = new HtmlTextWriter(sw);

        myGrid.RenderControl(htw);
        htw.Close();

        return sw.ToString();
    }
}
