<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    public TextBox pp_TextBox1 { get { return this.TextBox1; } }
    public Calendar pp_Calendar1 { get { return this.Calendar1; } }

    public void Button1_Click(Object sender, EventArgs e)
    {
        Response.Write("Self postback.");
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            PostBackUrl="Listing03-10 (Page 2).aspx" />
        <p>
            <asp:Label ID="Label1" Runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>