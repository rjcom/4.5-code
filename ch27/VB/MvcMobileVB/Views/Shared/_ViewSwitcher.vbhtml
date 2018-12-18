@If Request.Browser.IsMobileDevice And Request.HttpMethod = "GET" Then
    @:<div class="view-switcher ui-bar-a">
        @If ViewContext.HttpContext.GetOverriddenBrowser().IsMobileDevice Then
            @: Displaying mobile view
            @Html.ActionLink("Desktop view", "SwitchView", "ViewSwitcher", New With {.mobile = False, .returnUrl = Request.Url.PathAndQuery}, New With {.rel = "external"})
        Else
            @: Displaying desktop view
            @Html.ActionLink("Mobile view", "SwitchView", "ViewSwitcher", New With {.mobile = True, .returnUrl = Request.Url.PathAndQuery}, New With {.rel = "external"})
        End If
    @:</div>
End If
