<%@ Page Language="C#" %>

<script runat="server">
   protected void Page_Load(object sender, EventArgs e)
   {
      Label1.Text = Membership.GetNumberOfUsersOnline().ToString();
   }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Login or Logout</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:LoginStatus ID="LoginStatus1" Runat="server" />
        <p><asp:LoginName ID="LoginName1" Runat="server" 
            Font-Bold="True" Font-Size="XX-Large" /></p>
        <p>There are <asp:Label ID="Label1" Runat="server" Text="0" />
           users online.</p>
    </form>
</body>
</html>
