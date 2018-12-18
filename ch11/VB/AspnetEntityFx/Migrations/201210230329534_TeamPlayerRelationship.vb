Imports System
Imports System.Data.Entity.Migrations

Namespace Migrations
    Public Partial Class TeamPlayerRelationship
        Inherits DbMigration
    
        Public Overrides Sub Up()
            AddColumn("dbo.Players", "TeamId", Function(c) c.Int(nullable := False))
            AddForeignKey("dbo.Players", "TeamId", "dbo.Teams", "TeamId", cascadeDelete := True)
            CreateIndex("dbo.Players", "TeamId")
        End Sub
        
        Public Overrides Sub Down()
            DropIndex("dbo.Players", New String() { "TeamId" })
            DropForeignKey("dbo.Players", "TeamId", "dbo.Teams")
            DropColumn("dbo.Players", "TeamId")
        End Sub
    End Class
End Namespace
