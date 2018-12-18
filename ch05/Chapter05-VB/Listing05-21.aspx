<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Calendar1_SelectionChanged(ByVal sender As Object,
        ByVal e As System.EventArgs)
        Label1.Text = "<b><u>You selected the following date/dates:</u></b><br>"
        For i As Integer = 0 To (Calendar1.SelectedDates.Count - 1)
            Label1.Text += Calendar1.SelectedDates.Item(i).ToShortDateString() &
                "<br>"
        Next
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
                OnSelectionChanged="Calendar1_SelectionChanged"
                SelectionMode="DayWeekMonth"></asp:Calendar>
            <p>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>