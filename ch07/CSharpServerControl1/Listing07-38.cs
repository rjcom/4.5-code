using System;
using System.ComponentModel;
using System.Globalization;
          
public class Name
{
    public Name(string first, string last)
    {
        First = first;
        Last = last;
    }
          
    public string First { get; set; }
    public string Last { get; set; }
}
          
public class NameConverter : TypeConverter
{
          
   public override bool CanConvertFrom(ITypeDescriptorContext context,
      Type sourceType) {
          
      if (sourceType == typeof(string)) {
         return true;
      }
      return base.CanConvertFrom(context, sourceType);
   }
          
   public override object ConvertFrom(ITypeDescriptorContext context,
      CultureInfo culture, object value) {
      if (value is string) {
         string[] v = ((string)value).Split(new char[] {' '});
         return new Name(v[0],v[1]);
      }
      return base.ConvertFrom(context, culture, value);
   }
          
   public override object ConvertTo(ITypeDescriptorContext context,
      CultureInfo culture, object value, Type destinationType) {
          
      if (destinationType == typeof(string)) {
         return ((Name)value).First + " " + ((Name)value).Last;
      }
      return base.ConvertTo(context, culture, value, destinationType);
   }
}