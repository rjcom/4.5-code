Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls


<DefaultProperty("Text"), ToolboxData("<{0}:Listing0719 runat=server></{0}:Listing0719>")>
Public Class Listing0719
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
        output.AddAttribute("OnBlur", "ValidateText(this)")
        output.RenderBeginTag(HtmlTextWriterTag.Input)
        output.RenderEndTag()
        output.RenderEndTag()
    End Sub

    Protected Overrides Sub OnPreRender(ByVal e As System.EventArgs)
        Page.ClientScript.RegisterStartupScript(GetType(Page),
           "ControlFocus", "document.getElementById('" & Me.ClientID &
                "_i" & "').focus();", True)
        Page.ClientScript.RegisterClientScriptBlock(
            GetType(Page),
            "ValidateControl",
            "function ValidateText() {" &
                "if (ctl.value=='') {" &
                    "alert('Please enter a value.');ctl.focus(); }" &
            "}", True)
    End Sub

End Class