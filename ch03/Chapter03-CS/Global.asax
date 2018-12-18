<%@ Application Language="C#" %>
<%@ Import Namespace="System.Reflection" %>
<%@ Import Namespace="System.Diagnostics" %>
<script runat="server">
    void Application_End(object sender, EventArgs e)
    {
        HttpRuntime runtime =
            (HttpRuntime)typeof(System.Web.HttpRuntime)
            .InvokeMember("_theRuntime", BindingFlags.NonPublic | 
            BindingFlags.Static | BindingFlags.GetField,
            null, null, null);
        if (runtime == null)
        {
            return;
        }
        string shutDownMessage =
            (string)runtime.GetType().InvokeMember("_shutDownMessage",
            BindingFlags.NonPublic | BindingFlags.Instance | 
            BindingFlags.GetField, null, runtime, null);
        string shutDownStack =
            (string)runtime.GetType().InvokeMember("_shutDownStack",
            BindingFlags.NonPublic | BindingFlags.Instance | 
            BindingFlags.GetField, null, runtime, null);
        if (!EventLog.SourceExists(".NET Runtime"))
        {
            EventLog.CreateEventSource(".NET Runtime", "Application");
        }
        EventLog logEntry = new EventLog();
        logEntry.Source = ".NET Runtime";
        logEntry.WriteEntry(String.Format("\r\n\r\n_" +
            "shutDownMessage={0}\r\n\r\n_shutDownStack={1}",
            shutDownMessage, shutDownStack), EventLogEntryType.Error);
    }
</script>