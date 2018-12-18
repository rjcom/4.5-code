Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

<DefaultProperty("Text")>
<ToolboxData("<{0}:Listing0734 runat=server></{0}:Listing0734>")>
Public Class Listing0734
    Inherits System.Web.UI.WebControls.WebControl

    <Browsable(False)> Public Property TemplateMessage() As Message

    <PersistenceMode(PersistenceMode.InnerProperty),
        TemplateContainer(GetType(Message))>
    Public Property MessageTemplate() As ITemplate

    <Bindable(True), DefaultValue("")>
    Public Property Name() As String

    <Bindable(True), DefaultValue("")>
    Public Property Text() As String

    Public Overrides Sub DataBind()
        EnsureChildControls()
        ChildControlsCreated = True

        MyBase.DataBind()
    End Sub

    Protected Overrides Sub CreateChildControls()
        Me.Controls.Clear()
        Me.TemplateMessage = New Message() With {.Name = Name, .Text = Text}

        If Me.MessageTemplate Is Nothing Then
            Me.MessageTemplate = New DefaultMessageTemplate()
        End If

        Me.MessageTemplate.InstantiateIn(Me.TemplateMessage)
        Controls.Add(Me.TemplateMessage)
    End Sub

    Protected Overrides Sub RenderContents(
        ByVal writer As System.Web.UI.HtmlTextWriter)

        EnsureChildControls()
        ChildControlsCreated = True

        MyBase.RenderContents(writer)
    End Sub
End Class