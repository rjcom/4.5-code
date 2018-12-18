using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

[WebService(Namespace = "http://adventureworks/customers")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
public class Customers : System.Web.Services.WebService {
    [WebMethod]
    public DataSet GetCustomers() {
        SqlConnection conn;
        SqlDataAdapter myDataAdapter;
        DataSet myDataSet;
        string cmdString = "Select * From SalesLT.Customer";

        conn = new SqlConnection("Server=(LocalDB)\\v11.0;integrated security=True;attachdbfilename=|DataDirectory|\\AdventureWorksLT2012_Data.mdf;");
        myDataAdapter = new SqlDataAdapter(cmdString, conn);
          
        myDataSet = new DataSet();
        myDataAdapter.Fill(myDataSet, "Customers");
          
        return myDataSet;
    }   
}