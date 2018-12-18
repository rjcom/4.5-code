using System;
using System.Collections.Generic;
using System.Data.Spatial;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;


public class MyDateTimeBinder : IModelBinder
{
    public bool BindModel(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
    {
        var valueProviderResult = bindingContext.ValueProvider.GetValue(bindingContext.ModelName);
        var inputdate = valueProviderResult != null ? valueProviderResult.AttemptedValue : null;        
        DateTime newDate = new DateTime();
        bool success = DateTime.TryParse(inputdate, CultureInfo.GetCultureInfo("en-GB"), DateTimeStyles.None, out newDate);
        bindingContext.Model = newDate;  
        return bindingContext.Model != null;
    }
}
public class MyDateTimeProvider : System.Web.ModelBinding.ModelBinderProvider
{
    public override IModelBinder GetBinder(ModelBindingExecutionContext modelBindingExecutionContext, ModelBindingContext bindingContext)
    {
        if (bindingContext.ModelType == typeof(DateTime))
            return new MyDateTimeBinder();
        return null;
    }
}