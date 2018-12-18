Imports System.Web.UI
Imports System.ComponentModel

<ToolboxData("<{0}:Listing0743 runat=server></{0}:Listing0743>")>
Public Class Listing0743
    Inherits System.Web.UI.WebControls.WebControl

    <Bindable(True), Category("Appearance"), DefaultValue(""),
    Editor(
            GetType(System.Web.UI.Design.UrlEditor),
            GetType(System.Drawing.Design.UITypeEditor))>
    Public Property Url() As String

    Protected Overrides Sub RenderContents(ByVal output As HtmlTextWriter)
        output.Write(Url.ToString())
    End Sub
End Class