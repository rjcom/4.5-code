Imports System.ComponentModel
Imports System.Web.UI.Design
Imports System.Text
Imports System.ComponentModel.Design
Imports System.Web.UI

Public Class MultiRegionControlDesigner
    Inherits System.Web.UI.Design.WebControls.CompositeControlDesigner

    Protected _currentView As Int32 = 0
    Private myControl As Listing0740

    Public Overrides Sub Initialize(ByVal component As IComponent)
        MyBase.Initialize(component)
        myControl = CType(component, Listing0740)
    End Sub

    Public Overrides ReadOnly Property AllowResize() As Boolean
        Get
            Return True
        End Get
    End Property

    Protected Overrides Sub OnClick(ByVal e As DesignerRegionMouseEventArgs)

        If (e.Region Is Nothing) Then
            Return
        End If

        If ((e.Region.Name = "Header0") And (Not _currentView = 0)) Then
            _currentView = 0
            UpdateDesignTimeHtml()
        End If

        If ((e.Region.Name = "Header1") And (Not _currentView = 1)) Then

            _currentView = 1
            UpdateDesignTimeHtml()
        End If
    End Sub

    Public Overrides Function GetDesignTimeHtml( _
            ByVal regions As DesignerRegionCollection) As String
        BuildRegions(regions)
        Return BuildDesignTimeHtml()
    End Function

    Protected Overridable Sub BuildRegions( _
            ByVal regions As DesignerRegionCollection)

        regions.Add(New DesignerRegion(Me, "Header0"))
        regions.Add(New DesignerRegion(Me, "Header1"))

        ' If the current view is for all, we need another editable region
        Dim edr0 As New EditableDesignerRegion(Me, "Content" & _currentView, False)
        edr0.Description = "Add stuff in here if you dare:"
        regions.Add(edr0)

        ' Set the highlight, depending upon the selected region
        If ((_currentView = 0) Or (_currentView = 1)) Then
            regions(_currentView).Highlight = True
        End If
    End Sub

    Protected Overridable Function BuildDesignTimeHtml() As String

        Dim sb As New StringBuilder()
        sb.Append(BuildBeginDesignTimeHtml())
        sb.Append(BuildContentDesignTimeHtml())
        sb.Append(BuildEndDesignTimeHtml())

        Return sb.ToString()
    End Function

    Protected Overridable Function BuildBeginDesignTimeHtml() As String
        ' Create the table layout
        Dim sb As New StringBuilder()
        sb.Append("<table ")

        ' Styles that we'll use to render for the design-surface
        sb.Append("height='" & myControl.Height.ToString() & "' width='" & _
            myControl.Width.ToString() & "'>")

        ' Generate the title or caption bar
        sb.Append("<tr height='25px' align='center' " & _
            "style='font-family:tahoma;font-size:10pt;font-weight:bold;'>" & _
            "<td style='width:50%' " & _
            DesignerRegion.DesignerRegionAttributeName & "='0'>")
        sb.Append("Page-View 1</td>")
        sb.Append("<td style='width:50%' " & _
            DesignerRegion.DesignerRegionAttributeName & "='1'>")
        sb.Append("Page-View 2</td></tr>")

        Return sb.ToString()
    End Function

    Protected Overridable Function BuildEndDesignTimeHtml() As String
        Return ("</table>")
    End Function

    Protected Overridable Function BuildContentDesignTimeHtml() As String

        Dim sb As New StringBuilder()
        sb.Append("<td colspan='2' style='")
        sb.Append("background-color:" & _
            myControl.BackColor.Name.ToString() & ";' ")

        sb.Append(DesignerRegion.DesignerRegionAttributeName & "='2'>")

        Return sb.ToString()
    End Function

    Public Overrides Function GetEditableDesignerRegionContent( _
            ByVal region As EditableDesignerRegion) As String

        Dim host As IDesignerHost = _
            CType(Component.Site.GetService(GetType(IDesignerHost)), IDesignerHost)

        If (Not host Is Nothing) Then
            Dim template As ITemplate = myControl.View1

            If (region.Name = "Content1") Then
                template = myControl.View2
            End If

            If (Not template Is Nothing) Then
                Return ControlPersister.PersistTemplate(template, host)
            End If

        End If

        Return String.Empty
    End Function

    Public Overrides Sub SetEditableDesignerRegionContent( _
            ByVal region As EditableDesignerRegion, ByVal content As String)

        Dim regionIndex As Int32 = Int32.Parse(region.Name.Substring(7))

        If (content Is Nothing) Then

            If (regionIndex = 0) Then
                myControl.View1 = Nothing
            ElseIf (regionIndex = 1) Then
                myControl.View2 = Nothing
                Return
            End If

            Dim host As IDesignerHost = _
                CType(Component.Site.GetService(GetType(IDesignerHost)), 
                    IDesignerHost)

            If (Not host Is Nothing) Then
                Dim template = ControlParser.ParseTemplate(host, content)

                If (Not template Is Nothing) Then
                    If (regionIndex = 0) Then
                        myControl.View1 = template
                    ElseIf (regionIndex = 1) Then
                        myControl.View2 = template
                    End If
                End If
            End If
        End If
    End Sub
End Class