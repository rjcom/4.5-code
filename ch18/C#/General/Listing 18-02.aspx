<%@ Page Language="C#" %>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
      if (Page.User.Identity.IsAuthenticated)
      {
        Profile.FirstName = TextBox1.Text;
        Profile.LastName = TextBox2.Text;
        Profile.Age = TextBox3.Text;
        Profile.Member = Radiobuttonlist1.SelectedItem.Text;
        Profile.LastVisited = DateTime.Now.ToString();

        Label1.Text = "<p>Stored information includes:</p><p>" +
           "First name: " + Profile.FirstName +
           "<br />Last name: " + Profile.LastName +
           "<br />Age: " + Profile.Age +
           "<br />Member: " + Profile.Member +
           "<br />Last visited: " + Profile.LastVisited + "</p>";
      }
      else
      {
        Label1.Text = "You must be authenticated!";
      }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Storing Personalization</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>First Name:
        <asp:TextBox ID="TextBox1" Runat="server"></asp:TextBox></p>
        <p>Last Name:
        <asp:TextBox ID="TextBox2" Runat="server"></asp:TextBox></p>
        <p>Age:
        <asp:TextBox ID="TextBox3" Runat="server" Width="50px" 
         MaxLength="3"></asp:TextBox></p>
        <p>Are you a member?
        <asp:RadioButtonList ID="Radiobuttonlist1" Runat="server">
            <asp:ListItem Value="1">Yes</asp:ListItem>
            <asp:ListItem Value="0" Selected="True">No</asp:ListItem>     
        </asp:RadioButtonList></p>
        <p><asp:Button ID="Button1" Runat="server" Text="Submit" 
            OnClick="Button1_Click" />
        </p>
        <hr /><p>
        <asp:Label ID="Label1" Runat="server"></asp:Label></p>
    </form>
</body>
</html>
