@Code
    Layout = "~/_layout.vbhtml"    
    Page.Title = "My Tasks"   

    Dim db = Database.Open("Chapter35-VB")
    Dim tasks = db.Query("SELECT * FROM Tasks WHERE IsComplete = 0 or IsComplete IS NULL")
    Dim grid = New WebGrid(tasks)
End Code

<style type="text/css">
    .grid { margin: 4px; padding: 2px; border: 1px solid #666; }
    .grid td, th { border: 1px solid #fff; padding: 5px; }
    .head { background-color: #36648B; }
    .head a { color: #FFF; text-decoration-style: none; }
    .alt { background-color: #F0F8FF; }
</style>
<h1>Open Tasks</h1>
<div>
    @grid.GetHtml(
        tableStyle:= "grid",
        headerStyle:= "head",
        alternatingRowStyle:= "alt",
        columns:= grid.Columns(
            grid.Column("TaskDescription","Task")
        )
    )
</div>
@Section Sidebar
<p>
    <a href="addtask.vbhtml">Add More Tasks</a>
</p>
End Section