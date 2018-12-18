<%@ Application Language="VB" %>

<script runat="server">
    Overrides Function GetVaryByCustomString(ByVal context As HttpContext, _
            ByVal arg As String) As String
        If arg.ToLower() = "prefs" Then
            Dim cookie As HttpCookie = context.Request.Cookies("Language")
            If cookie IsNot Nothing Then
                Return cookie.Value
            End If
        End If
        Return MyBase.GetVaryByCustomString(context, arg)
    End Function

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application startup
    End Sub
    
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
    End Sub
        
    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
    End Sub
       
</script>