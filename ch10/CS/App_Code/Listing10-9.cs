using System.Collections.Generic;

public class LastNameComparer : IComparer<string>
{
    public int Compare(string x, string y)
    {
        var director1LastName = x.Substring(x.LastIndexOf(' '));
        var director2LastName = y.Substring(y.LastIndexOf(' '));
        return director1LastName.CompareTo(director2LastName);
    }
}