<%@ Page Language="vb" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object,
        ByRef e As System.EventArgs)
        Label1.Text = "Hello " & TextBox1.Text & "<br />" &
            "Date Selected: " & Calendar1.SelectedDate.ToShortDateString()
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>First Page</title>
</head>
<body>
    <form id="form1" runat="server">
        Enter your name:<br />
        <asp:Textbox ID="TextBox1" Runat="server"></asp:Textbox>
        <p>
            When do you want to fly?<br />
            <asp:Calendar ID="Calendar1" Runat="server"></asp:Calendar>
        </p>
        <br />
        <asp:Button ID="Button1" Runat="server" Text="Submit page to itself"
            OnClick="Button1_Click" />
        <asp:Button ID="Button2" Runat="server" Text="Submit page to Page2.aspx"
            PostBackUrl="Listing03-08 (Page 2).aspx" />
        <p>
            <asp:Label ID="Label1" Runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>