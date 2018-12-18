Imports System
Imports System.Collections.Generic
Imports System.ComponentModel
Imports System.Text
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

<DefaultProperty("Text")>
<ToolboxData("<{0}:Listing0727 runat=server></{0}:Listing0727>")>
Public Class Listing0727
    Inherits WebControl

    Dim state As String
    Protected Overrides Sub OnInit(ByVal e As System.EventArgs)
        Page.RegisterRequiresControlState(Me)
        MyBase.OnInit(e)
    End Sub

    Protected Overrides Sub LoadControlState(ByVal savedState As Object)
        state = CStr(savedState)
    End Sub

    Protected Overrides Function SaveControlState() As Object
        Return CType("ControlSpecificData", Object)
    End Function

    Protected Overrides Sub Render(ByVal output As System.Web.UI.HtmlTextWriter)
        output.Write("Control State: " & state)
    End Sub

End Class