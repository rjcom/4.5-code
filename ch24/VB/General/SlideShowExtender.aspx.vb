Partial Class SlideShowExtender
    Inherits System.Web.UI.Page

    <System.Web.Services.WebMethodAttribute()> _
    <System.Web.Script.Services.ScriptMethodAttribute()> _
    Public Shared Function GetSlides(ByVal contextKey As System.String) _
      As AjaxControlToolkit.Slide()

        Return New AjaxControlToolkit.Slide() { _
            New AjaxControlToolkit.Slide("Images/ToolkitLogo.jpg", _
              "The Logo", "This is the Ajax Control Toolkit Logo."),
            New AjaxControlToolkit.Slide("Images/ToolkitLogo1.jpg", _
              "The 2nd Logo", "This is the modified Ajax Control Toolkit Logo."),
            New AjaxControlToolkit.Slide("Images/ToolkitLogo2.jpg", _
              "The 3rd Logo", "This is another modified Ajax Control Toolkit Logo.")}

    End Function
End Class
