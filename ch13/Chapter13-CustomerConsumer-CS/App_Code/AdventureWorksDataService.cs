using System;
using System.Data.Services;
using System.Data.Services.Common;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Web;

public class AdventureWorksDataService : 
    DataService<AdventureWorksEntities>
{
    public static void 
        InitializeService(DataServiceConfiguration config)
    {
        config.SetEntitySetAccessRule("*", 
            EntitySetRights.AllRead);
    }
}