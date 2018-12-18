using System;
using System.Web;

[Serializable]
public class Person
{
   public string firstName;
   public string lastName;

   public override string ToString()
   {
      return String.Format("Person Object: {0} {1}", firstName, lastName);
   }
}
