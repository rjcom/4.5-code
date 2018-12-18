Imports System.ComponentModel
Imports System.Web.UI
Imports System.Web.UI.WebControls

<DefaultProperty("Text"),
ToolboxData("<{0}:ServerControl39 runat=server></{0}:ServerControl39>")>
Public Class Listing0737
    Inherits WebControl

    <Bindable(True)>
    <Category("Appearance")>
    <DefaultValue("")>
    <TypeConverter(GetType(GuidConverter))>
    Property BookId() As System.Guid

    Protected Overrides Sub RenderContents(ByVal output As HtmlTextWriter)
        output.Write(BookId.ToString())
    End Sub

End Class