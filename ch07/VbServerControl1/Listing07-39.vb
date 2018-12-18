Imports System.ComponentModel
Imports System.Web.UI

<DefaultProperty("Text"),
ToolboxData("<{0}:Listing0739 runat=server></{0}:Listing0739>"),
Designer(GetType(System.Web.UI.Design.ControlDesigner))>
Public Class Listing0739
    Inherits System.Web.UI.WebControls.WebControl

    <Bindable(True), Category("Appearance"), DefaultValue(""), Localizable(True)>
    Property Text() As String
        Get
            Dim s As String = CStr(ViewState("Text"))
            If s Is Nothing Then
                Return "[" + Me.ID + "]"
            Else
                Return s
            End If
        End Get

        Set(ByVal Value As String)
            ViewState("Text") = Value
        End Set
    End Property

    Protected Overrides Sub RenderContents(ByVal output As HtmlTextWriter)
        output.Write(Text)
    End Sub
End Class