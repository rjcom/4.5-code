Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

<DefaultProperty("Text"),
ToolboxData("<{0}:Listing0732 runat=server></{0}:Listing0732>")>
Public Class Listing0732
    Inherits System.Web.UI.WebControls.CompositeControl

    Protected textbox As TextBox = New TextBox()

    Public Property Text() As String
        Get
            EnsureChildControls()
            Return textbox.Text
        End Get
        Set(ByVal value As String)
            EnsureChildControls()
            textbox.Text = value
        End Set
    End Property

    Protected Overrides Sub CreateChildControls()
        Me.Controls.Add(textbox)
        Me.ChildControlsCreated = True
    End Sub
End Class