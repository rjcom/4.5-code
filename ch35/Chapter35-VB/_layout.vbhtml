@Code
    Dim sidebarStyle = "#Sidebar { float: right; margin-left: 0; width: 15%; " & _ 
                       "padding: 5px; background-color: #f2f2f2; border: 1px solid #999; } " & _
                       "#MainContent { float: left; width: 80%; }"
End Code
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>@Page.Title</title>
        <style>
            body { font-family: Arial; font-size: 11pt; }
            header { background-color: #3E5CA2; color: #fff; }
            footer { clear: both; text-align: center; font-size: 9pt; }
            @If (IsSectionDefined("Sidebar")) Then
                @sidebarStyle
            End If
        </style>
    </head>
    <body>
        <header>
            <h1>My Honey-Do List</h1>
        </header>  
        @If (IsSectionDefined("Sidebar")) Then
        @:<aside id="Sidebar">
            @RenderSection("Sidebar")
        @:</aside>
        End If
        <section id="MainContent">
            @RenderBody()
        </section>
        <footer>
            Copyright 2013. All Rights Reserved.
        </footer>
    </body>
</html>