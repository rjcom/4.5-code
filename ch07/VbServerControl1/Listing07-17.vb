Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls


<DefaultProperty("Text"), ToolboxData("<{0}:Listing0717 runat=server></{0}:Listing0717>")>
Public Class Listing0717
    Inherits WebControl

    <Bindable(True), Category("Appearance"), DefaultValue(""), Localizable(True)>
    Property Text() As String
        Get
            Dim s As String = CStr(ViewState("Text"))
            If s Is Nothing Then
                Return "[" & Me.ID & "]"
            Else
                Return s
            End If
        End Get

        Set(ByVal Value As String)
            ViewState("Text") = Value
        End Set
    End Property

    Protected Overrides Sub RenderContents(ByVal output As HtmlTextWriter)
        output.RenderBeginTag(HtmlTextWriterTag.Div)
        output.AddAttribute(HtmlTextWriterAttribute.Type, "text")
        output.AddAttribute(HtmlTextWriterAttribute.Id, Me.ClientID & "_i")
        output.AddAttribute(HtmlTextWriterAttribute.Name,
                            Me.ClientID & "_i")
        output.AddAttribute(HtmlTextWriterAttribute.Value, Me.Text)
        output.AddStyleAttribute(HtmlTextWriterStyle.BackgroundColor, "Silver")
        output.RenderBeginTag(HtmlTextWriterTag.Input)
        output.RenderEndTag()
        output.RenderEndTag()
    End Sub
End Class