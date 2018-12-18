<%@ Application Language="vb" %>
<%@ Import Namespace="System.Reflection" %>
<%@ Import Namespace="System.Diagnostics" %>
<script runat="server">
    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        Dim MyRuntime As HttpRuntime =
            GetType(System.Web.HttpRuntime).InvokeMember("_theRuntime", _
            BindingFlags.NonPublic Or BindingFlags.Static Or _
            BindingFlags.GetField, _
            Nothing, Nothing, Nothing)
        If (MyRuntime Is Nothing) Then
            Return
        End If
        Dim shutDownMessage As String =
            CType(MyRuntime.GetType().InvokeMember("_shutDownMessage", _
            BindingFlags.NonPublic Or BindingFlags.Instance Or _
            BindingFlags.GetField,
            Nothing, MyRuntime, Nothing), System.String)
        Dim shutDownStack As String =
            CType(MyRuntime.GetType().InvokeMember("_shutDownStack", _
            BindingFlags.NonPublic Or BindingFlags.Instance Or _
            BindingFlags.GetField, _
            Nothing, MyRuntime, Nothing), System.String)
        If (Not EventLog.SourceExists(".NET Runtime")) Then
            EventLog.CreateEventSource(".NET Runtime", "Application")
        End If
        Dim logEntry As EventLog = New EventLog()
        logEntry.Source = ".NET Runtime"
        logEntry.WriteEntry(String.Format( _
            "shutDownMessage={0}\r\n\r\n_shutDownStack={1}", _
            shutDownMessage, shutDownStack), EventLogEntryType.Error)
    End Sub
</script>