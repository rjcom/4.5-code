public partial class SlideShowExtender : System.Web.UI.Page
{
    [System.Web.Services.WebMethodAttribute(),
     System.Web.Script.Services.ScriptMethodAttribute()]
    public static AjaxControlToolkit.Slide[] GetSlides(string contextKey)
    {
        return new AjaxControlToolkit.Slide[] {
            new AjaxControlToolkit.Slide("Images/ToolkitLogo.jpg", 
              "The Logo", "This is the Ajax Control Toolkit Logo."),
            new AjaxControlToolkit.Slide("Images/ToolkitLogo1.jpg", 
              "The 2nd Logo", "This is the modified Ajax Control Toolkit Logo."),
            new AjaxControlToolkit.Slide("Images/ToolkitLogo2.jpg", 
              "The 3rd Logo", "This is another modified Ajax Control Toolkit Logo.") };
    }
}
