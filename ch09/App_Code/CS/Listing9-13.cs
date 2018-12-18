using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;


public class AggregateValueProvider : IValueProvider, IUnvalidatedValueProvider
{
    private readonly List<IUnvalidatedValueProvider> _valueProviders = new List<IUnvalidatedValueProvider>();

    public AggregateValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
    {
        _valueProviders.Add(new FormValueProvider(modelBindingExecutionContext));                
        _valueProviders.Add(new QueryStringValueProvider(modelBindingExecutionContext));                
    }

    public bool ContainsPrefix(string prefix)
    {
        return _valueProviders.Any(vp => vp.ContainsPrefix(prefix));
    }

    public ValueProviderResult GetValue(string key)
    {
        return GetValue(key, false);
    }

    public ValueProviderResult GetValue(string key, bool skipValidation)
    {
        return _valueProviders.Select(vp => vp.GetValue(key, skipValidation))
            .LastOrDefault();
    }
}

public class AggregateValueAttribute : ValueProviderSourceAttribute
{
    public override IValueProvider GetValueProvider(ModelBindingExecutionContext modelBindingExecutionContext)
    {
        return new AggregateValueProvider(modelBindingExecutionContext);
    }
}
