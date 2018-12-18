Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

<DefaultProperty("Text"),
ToolboxData("<{0}:Listing0730 runat=server></{0}:Listing0730>")>
Public Class Listing0730
    Inherits WebControl
    Implements IPostBackEventHandler, IPostBackDataHandler

    <Bindable(True), Category("Appearance"),
    DefaultValue(""), Localizable(True)>
    Property Text() As String
        Get
            Dim s As String = CStr(ViewState("Text"))
            If s Is Nothing Then
                Return String.Empty
            Else
                Return s
            End If
        End Get

        Set(ByVal Value As String)
            ViewState("Text") = Value
        End Set
    End Property

    Protected Overrides Sub RenderContents(
                            ByVal output As HtmlTextWriter)
        Dim p As New PostBackOptions(Me)
        output.AddAttribute(HtmlTextWriterAttribute.Id, Me.ClientID)
        output.AddAttribute(HtmlTextWriterAttribute.Name, Me.ClientID)
        output.AddAttribute(HtmlTextWriterAttribute.Value, Me.Text)
        output.RenderBeginTag(HtmlTextWriterTag.Input)
        output.RenderEndTag()
    End Sub

    Public Function LoadPostData(ByVal postDataKey As String,
        ByVal postCollection As  _
            System.Collections.Specialized.NameValueCollection) _
        As Boolean Implements _
            System.Web.UI.IPostBackDataHandler.LoadPostData
        Me.Text = postCollection(postDataKey)
        Return False
    End Function

    Public Sub RaisePostDataChangedEvent() _
        Implements _
           System.Web.UI.IPostBackDataHandler.RaisePostDataChangedEvent
    End Sub

    Public Event Click()
    Public Sub OnClick(ByVal args As EventArgs)
        RaiseEvent Click()
    End Sub

    Public Sub RaisePostBackEvent(ByVal eventArgument As String) _
      Implements System.Web.UI.IPostBackEventHandler.RaisePostBackEvent
        OnClick(EventArgs.Empty)
    End Sub
End Class