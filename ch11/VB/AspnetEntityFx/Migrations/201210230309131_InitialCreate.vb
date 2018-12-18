Imports System
Imports System.Data.Entity.Migrations

Namespace Migrations
    Public Partial Class InitialCreate
        Inherits DbMigration
    
        Public Overrides Sub Up()
            CreateTable(
                "dbo.Teams",
                Function(c) New With
                    {
                        .TeamId = c.Int(nullable := False, identity := True),
                        .TeamName = c.String()
                    }) _
                .PrimaryKey(Function(t) t.TeamId)
            
            CreateTable(
                "dbo.Players",
                Function(c) New With
                    {
                        .PlayerId = c.Int(nullable := False, identity := True),
                        .FirstName = c.String(),
                        .LastName = c.String()
                    }) _
                .PrimaryKey(Function(t) t.PlayerId)
            
        End Sub
        
        Public Overrides Sub Down()
            DropTable("dbo.Players")
            DropTable("dbo.Teams")
        End Sub
    End Class
End Namespace
