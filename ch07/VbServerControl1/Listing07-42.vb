Imports System.Web.UI.Design
Imports System.ComponentModel.Design
Imports System.ComponentModel
Imports System.Web.UI

Public Class Listing0742Designer
    Inherits ControlDesigner

    Private _actionLists As DesignerActionListCollection

    Public Overrides ReadOnly Property ActionLists() _
            As DesignerActionListCollection
        Get
            If IsNothing(_actionLists) Then
                _actionLists = New DesignerActionListCollection()
                _actionLists.AddRange(MyBase.ActionLists)
                _actionLists.Add(New ServerControl44ControlList(Me))
            End If
            Return _actionLists
        End Get
    End Property

    Private NotInheritable Class ServerControl44ControlList
        Inherits DesignerActionList

        Public Sub New(ByVal c As Listing0742Designer)
            MyBase.New(c.Component)
        End Sub

        Public Overrides Function GetSortedActionItems() _
                As DesignerActionItemCollection

            Dim c As New DesignerActionItemCollection()
            c.Add(New DesignerActionTextItem("Text Action Item",
                                             "Custom Category"))
            Return c
        End Function
    End Class
End Class

<DefaultProperty("Text"),
DesignerAttribute(GetType(Listing0742Designer)),
ToolboxData("<{0}:ServerControl44 runat=server></{0}:ServerControl44>")>
Public Class Listing0742
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