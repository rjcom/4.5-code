Public Class Simple2Controller
    Inherits System.Web.Mvc.Controller

    Sub Hello()
        Response.Write("<h1>Hello World Again!</h1>")
    End Sub

    Sub Goodbye(name As String)
        Response.Write("Goodbye " + HttpUtility.HtmlEncode(name))
    End Sub

End Class
