<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object,
        ByVal e As System.EventArgs)
        Response.Write("You selected: " &
            Calendar1.SelectedDate.ToShortDateString())
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Using the Calendar Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server"
                OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        </div>
    </form>
</body>
</html>