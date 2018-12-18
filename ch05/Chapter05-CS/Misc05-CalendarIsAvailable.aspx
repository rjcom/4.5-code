<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
public void Calendar1_DayRender(Object sender, DayRenderEventArgs e)
{
    if (e.Day.Date < DateTime.Now)
    {
        e.Day.IsSelectable = false;
    }
}
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