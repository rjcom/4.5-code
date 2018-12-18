Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls


<DefaultProperty("Text"), ToolboxData("<{0}:Listing0722 runat=server></{0}:Listing0722>")>
Public Class Listing0722
    Inherits WebControl
    Implements ICallbackEventHandler

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
        output.AddAttribute("OnBlur", "ClientCallback();")
        output.RenderBeginTag(HtmlTextWriterTag.Input)
        output.RenderEndTag()
        output.RenderEndTag()

    End Sub

    Protected Overrides Sub OnPreRender(ByVal e As System.EventArgs)
        Page.ClientScript.RegisterClientScriptInclude(
            "UtilityFunctions", "Listing07-23.js")

        Page.ClientScript.RegisterStartupScript(GetType(Page),
           "ControlFocus", "document.getElementById('" &
           Me.ClientID & "_i" & "').focus();",
           True)

        Page.ClientScript.RegisterStartupScript(
            GetType(Page), "ClientCallback",
            "function ClientCallback() {" &
                "args=document.getElementById('" &
                Me.ClientID & "_i" & "').value;" &
                Page.ClientScript.GetCallbackEventReference(Me, "args",
                    "CallbackHandler", Nothing, "ErrorHandler", True) &
                "}",
            True)
    End Sub

    Public Sub RaiseCallbackEvent(ByVal eventArgument As String) _
        Implements System.Web.UI.ICallbackEventHandler.RaiseCallbackEvent

        Dim result As Int32
        If (Not Int32.TryParse(eventArgument, result)) Then
            Throw New Exception(
                      "The method or operation is not implemented.")
        End If
    End Sub

    Public Function GetCallbackResult() As String _
        Implements System.Web.UI.ICallbackEventHandler.GetCallbackResult

        Return "Valid Data"
    End Function

End Class