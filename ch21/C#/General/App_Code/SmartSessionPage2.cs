using System;
using System.Web;

public class SmartSessionPage2 : System.Web.UI.Page
{
    private const string MYPERSON = "myperson";

    public Person MyPerson
    {
        get
        {
            return (Person)Session[MYPERSON];
        }
        set
        {
            Session[MYPERSON] = value;
        }
    }
}
