Imports System.Web.Optimization

Public Class BundleMobileConfig
    Public Shared Sub RegisterBundles(bundles As BundleCollection)
        bundles.Add(New ScriptBundle("~/bundles/jquerymobile").Include("~/Scripts/jquery.mobile-{version}.js"))
        bundles.Add(New StyleBundle("~/Content/Mobile/css").Include("~/Content/Site.Mobile.css"))
        bundles.Add(New StyleBundle("~/Content/jquerymobile/css").Include("~/Content/jquery.mobile-{version}.css"))
    End Sub
End Class
