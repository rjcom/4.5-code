using Microsoft.VisualBasic;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
public class NameFunctions
{
    public NameFunctions() { }

    private string firstNameValue;
    public string FirstName
    {
        get { return firstNameValue; }
        set { firstNameValue = value; }
    }
    private string lastNameValue;
    public string LastName
    {
        get { return lastNameValue; }
        set { lastNameValue = value; }
    }


    public string FullName
    {
        get { return FirstName + "" + LastName; }
    }

    private string fullNameLen;
    public int FullNameLength
    {
        get { return FullName.Length; }
    }

}
