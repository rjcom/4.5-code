Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

<DefaultProperty("Text"), ToolboxData("<{0}:Listing0729 runat=server></{0}:Listing0729>")>
Public Class Listing0729
    Inherits WebControl
    Implements IPostBackEventHandler

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

    Public Event Click()
    Public Sub OnClick(ByVal args As EventArgs)
        RaiseEvent Click()
    End Sub

    Public Sub RaisePostBackEvent(ByVal eventArgument As String) _
      Implements System.Web.UI.IPostBackEventHandler.RaisePostBackEvent
        OnClick(EventArgs.Empty)
    End Sub

    Protected Overrides Sub RenderContents(ByVal output As HtmlTextWriter)
        Dim p As New PostBackOptions(Me)
        output.AddAttribute(HtmlTextWriterAttribute.Onclick,
            Page.ClientScript.GetPostBackEventReference(p))
        output.AddAttribute(HtmlTextWriterAttribute.Value, "My Button")
        output.AddAttribute(HtmlTextWriterAttribute.Id,
                            Me.ClientID & "_i")
        output.AddAttribute(HtmlTextWriterAttribute.Name,
                            Me.ClientID & "_i")
        output.RenderBeginTag(HtmlTextWriterTag.Button)
        output.Write("My Button")
        output.RenderEndTag()
    End Sub
End Class