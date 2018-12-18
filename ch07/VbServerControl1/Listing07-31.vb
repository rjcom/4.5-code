Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

<DefaultProperty("Text"),
 ToolboxData("<{0}:Listing0731 runat=server></{0}:Listing0731>")>
Public Class Listing0731
    Inherits System.Web.UI.WebControls.CompositeControl

    Protected textbox As TextBox = New TextBox()

    Protected Overrides Sub CreateChildControls()
        Me.Controls.Add(textbox)
    End Sub
End Class