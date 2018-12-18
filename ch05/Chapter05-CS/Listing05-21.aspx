<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Label1.Text = "<b><u>You selected the following date/dates:</u></b><br>";
        for (int i = 0; i < Calendar1.SelectedDates.Count; i++)
        {
            Label1.Text += Calendar1.SelectedDates[i].ToShortDateString() +
             "<br>";
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using the Calendar Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server"
                OnSelectionChanged="Calendar1_SelectionChanged"
                SelectionMode="DayWeekMonth"></asp:Calendar>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>