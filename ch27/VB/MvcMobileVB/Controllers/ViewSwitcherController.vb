Imports System.Web.WebPages

Namespace MvcMobileVB
    Public Class ViewSwitcherController
        Inherits System.Web.Mvc.Controller

        Public Function SwitchView(mobile As Boolean, returnUrl As String) As RedirectResult
            If Request.Browser.IsMobileDevice = mobile Then
                HttpContext.ClearOverriddenBrowser()
            Else
                HttpContext.SetOverriddenBrowser(DirectCast(IIf(mobile, BrowserOverride.Mobile, BrowserOverride.Desktop), BrowserOverride))
            End If
            Return Redirect(returnUrl)
        End Function

    End Class
End Namespace