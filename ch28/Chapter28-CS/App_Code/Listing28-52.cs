using System.Configuration;
        
public class MyCompanySettings : ConfigurationSection
{
    [ConfigurationProperty("Key1", DefaultValue = "This is the value of Key 1",
     IsRequired = false)]
    public string Key1
    {
        get
        {
            return this["Key1"] as string;
        }
    }
        
    [ConfigurationProperty("Key2", IsRequired = true)]
    public string Key2
    {
        get
        {
            return this["Key2"] as string;
        }
    }
}