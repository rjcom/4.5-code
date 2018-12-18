using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace AspnetEntityFx
{
    public partial class CodeFirst : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var context = new TeamContext())
            {
                var team = new Team { TeamName = "Team 1" };
                context.Teams.Add(team);
                team = new Team { TeamName = "Team 2" };
                context.Teams.Add(team);
                team = new Team { TeamName = "Team 3" };
                context.Teams.Add(team);
                context.SaveChanges();
  
                var query = from t in context.Teams
                        select t;
  
                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }  
        } 
    }
  
    public class Team
    {
        public int TeamId { get; set; }
        public string TeamName { get; set; }

        public virtual List<Player> Players { get; set; }
    }
  
    public class Player
    {
        public int PlayerId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }

        public int TeamId { get; set; }
        public virtual Team Team { get; set; } 
    }
  
    public class TeamContext : DbContext
    {
        public DbSet<Team> Teams { get; set; }
        public DbSet<Player> Players { get; set; }
    } 

}