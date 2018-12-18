using System;
using System.Collections.Generic;
using System.Globalization;

namespace Chapter32CS
{
    public partial class SortingFI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Threading.Thread.CurrentThread.CurrentCulture = new CultureInfo("fi-FI");

            List<string> myList = new List<string>();

            myList.Add("Washington D.C.");
            myList.Add("Helsinki");
            myList.Add("Moscow");
            myList.Add("Warsaw");
            myList.Add("Vienna");
            myList.Add("Tokyo");

            myList.Sort();

            foreach (string item in myList)
            {
                Response.Write(item.ToString() + "<br>");
            }
        }
    }
}