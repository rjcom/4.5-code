Imports System.Data.Entity

Public Class CodeFirst
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Using context As New TeamContextVB()
            Dim team As New Team() With {.TeamName = "Team 1"}
            context.Teams.Add(team)
            team = New Team() With {.TeamName = "Team 2"}
            context.Teams.Add(team)
            team = New Team() With {.TeamName = "Team 3"}
            context.Teams.Add(team)
            context.SaveChanges()

            Dim query = From t In context.Teams Select t

            GridView1.DataSource = query.ToList()
            GridView1.DataBind()
        End Using
    End Sub

End Class

Public Class Team
    Public Sub New()
        Me.Players = New List(Of Player)()
    End Sub
    Public Property TeamId() As Integer
    Public Property TeamName() As String

    Public Overridable Property Players() As ICollection(Of Player)
End Class

Public Class Player
    Public Property PlayerId() As Integer
    Public Property FirstName() As String
    Public Property LastName() As String

    Public Property TeamId() As Integer
    Public Overridable Property Team() As Team
End Class

Public Class TeamContextVB
    Inherits DbContext

    Public Property Teams() As DbSet(Of Team)
    Public Property Players() As DbSet(Of Player)
End Class