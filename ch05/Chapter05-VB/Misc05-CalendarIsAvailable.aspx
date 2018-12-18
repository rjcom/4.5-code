<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Public Sub Calendar1_DayRender(sender As Object, e As DayRenderEventArgs)
        If (e.Day.Date < DateTime.Now) Then
            e.Day.IsSelectable = False
        End If
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Using the Calendar Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender"></asp:Calendar>
        </div>
    </form>
</body>
</html>