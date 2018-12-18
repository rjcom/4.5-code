<%@ Page Language="vb" %>
<script runat="server">
    Public ReadOnly Property pp_TextBox1() As TextBox
        Get
            Return TextBox1
        End Get
    End Property
    Public ReadOnly Property pp_Calendar1() As Calendar
        Get
            Return Calendar1
        End Get
    End Property
    Public Sub Button1_Click(sender As Object, e As EventArgs)
        Response.Write("Self postback.")
    End Sub
</script>
<!DOCTYPE html>
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
            PostBackUrl="Listing03-10 (Page 2).aspx" />
        <p>
            <asp:Label ID="Label1" Runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>