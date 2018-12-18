namespace AspnetEntityFx.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class TeamPlayerRelationship : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Players", "TeamId", c => c.Int(nullable: false));
            AddForeignKey("dbo.Players", "TeamId", "dbo.Teams", "TeamId", cascadeDelete: true);
            CreateIndex("dbo.Players", "TeamId");
        }
        
        public override void Down()
        {
            DropIndex("dbo.Players", new[] { "TeamId" });
            DropForeignKey("dbo.Players", "TeamId", "dbo.Teams");
            DropColumn("dbo.Players", "TeamId");
        }
    }
}
