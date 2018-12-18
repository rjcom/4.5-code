<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
    {
        e.Cell.VerticalAlign = VerticalAlign.Top;
        if (e.Day.DayNumberText == "18")
        {
            e.Cell.Controls.Add(new LiteralControl("<p>User Group Meeting!</p>"));
            e.Cell.BorderColor = System.Drawing.Color.Black;
            e.Cell.BorderWidth = 1;
            e.Cell.BorderStyle = BorderStyle.Solid;
            e.Cell.BackColor = System.Drawing.Color.LightGray;
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
                OnDayRender="Calendar1_DayRender" Height="190px" BorderColor="White"
                Width="350px" ForeColor="Black" BackColor="White" BorderWidth="1px"
                NextPrevFormat="FullMonth" Font-Names="Verdana" Font-Size="9pt">
                <SelectedDayStyle ForeColor="White"
                    BackColor="#333399"></SelectedDayStyle>
                <OtherMonthDayStyle ForeColor="#999999"></OtherMonthDayStyle>
                <TodayDayStyle BackColor="#CCCCCC"></TodayDayStyle>
                <NextPrevStyle ForeColor="#333333" VerticalAlign="Bottom"
                    Font-Size="8pt" Font-Bold="True"></NextPrevStyle>
                <DayHeaderStyle Font-Size="8pt" Font-Bold="True"></DayHeaderStyle>
                <TitleStyle ForeColor="#333399" BorderColor="Black" Font-Size="12pt"
                    Font-Bold="True" BackColor="White" BorderWidth="4px"></TitleStyle>
            </asp:Calendar>
        </div>
    </form>
</body>
</html>