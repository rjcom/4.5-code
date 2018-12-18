<%@ Page Language="C#" %>

<script runat="server">
   protected void Page_Load(object sender, EventArgs e)
   {
      if (!Page.IsPostBack)
      {
         ListBoxDataBind();
      }
   }

   protected void Button1_Click(object sender, EventArgs e)
   {
      Roles.CreateRole(TextBox1.Text);
      ListBoxDataBind();
   }

   protected void ListBoxDataBind()
   {
      ListBox1.DataSource = Roles.GetAllRoles();
      ListBox1.DataBind();
   }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Role Manager</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Role Manager</h1>
        Add Role:<br />
        <asp:TextBox ID="TextBox1" Runat="server"></asp:TextBox>
        <p><asp:Button ID="Button1" Runat="server" Text="Add Role to Application" 
            OnClick="Button1_Click" /></p>
        Roles Defined:<br />
        <asp:ListBox ID="ListBox1" Runat="server">
        </asp:ListBox>
    </form>
</body>
</html>
