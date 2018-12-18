@Code
    Layout = "~/_layout.vbhtml"    
    Page.Title = "Add a task"

    ' Variables
    Dim taskDescription = ""

    ' Validation
    Validation.RequireField("taskDescription", "A task is required.")
    Validation.Add("taskDescription", Validator.StringLength(250))

    ' If the page has been posted back and if it's valid, insert the data and redirect
    If (IsPost) Then
        If (Validation.IsValid())
            taskDescription = Request.Form("taskDescription")

            Dim db = Database.Open("Chapter35-VB")
            Dim insertCommand = "INSERT INTO Tasks (TaskDescription, DateCreated) Values(@0, @1)"
            db.Execute(insertCommand, taskDescription, DateTime.Now)
            db.Close()
            Response.Redirect("~/")
        End If
    End If
End Code

<form action="" method="post">
    <div>
        @Html.ValidationSummary()
    </div>
    <p>
        <label for="taskDescription">Task:</label> 
        <input type="text" id="taskDescription" name="taskDescription" />
        @Html.ValidationMessage("taskDescription")
    </p>
    <input type="submit" value="Add Task" />
</form>