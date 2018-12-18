Imports System.ComponentModel
Imports System.Web.UI
Imports System.Web.UI.WebControls

<Designer(GetType(MultiRegionControlDesigner))> _
<ToolboxData("<{0}:Listing0740 runat=server width=100%></{0}:Listing0740>")> _
Public Class Listing0740
    Inherits CompositeControl

    ' Define the templates that represent 2 views on the control
    Private _view1 As ITemplate
    Private _view2 As ITemplate

    ' These properties are inner properties
    <PersistenceMode(PersistenceMode.InnerProperty), DefaultValue("")> _
    Public Overridable Property View1() As ITemplate
        Get
            Return _view1
        End Get
        Set(ByVal value As ITemplate)
            _view1 = value
        End Set
    End Property

    <PersistenceMode(PersistenceMode.InnerProperty), DefaultValue("")> _
    Public Overridable Property View2() As ITemplate
        Get
            Return _view2
        End Get
        Set(ByVal value As ITemplate)
            _view2 = value
        End Set
    End Property

    ' The current view on the control; 0= view1, 1=view2, 2=all views
    Private _currentView As Int32 = 0
    Public Property CurrentView() As Int32
        Get
            Return _currentView
        End Get
        Set(ByVal value As Int32)
            _currentView = value
        End Set
    End Property

    Protected Overrides Sub CreateChildControls()
        MyBase.CreateChildControls()

        Controls.Clear()

        Dim template As ITemplate = View1
        If (_currentView = 1) Then
            template = View2
        End If

        Dim p As New Panel()
        Controls.Add(p)

        If (Not template Is Nothing) Then
            template.InstantiateIn(p)
        End If
    End Sub

End Class