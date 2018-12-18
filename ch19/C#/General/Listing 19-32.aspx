<%@ Page Language="C#" %>

<script runat="server">
   protected void Page_Load(object sender, EventArgs e)
   {
      if (!Page.IsPostBack)
      {
         DropDownDataBind();
      }
   }

   protected void Button1_Click(object sender, EventArgs e)
   {
      GridView1.DataSource = Roles.GetUsersInRole(DropDownList1.SelectedValue);
      GridView1.DataBind();
      DropDownDataBind();
   }

   protected void DropDownDataBind()
   {
      DropDownList1.DataSource = Roles.GetAllRoles();
      DropDownList1.DataBind();
   }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Role Manager</title>
</head>
<body>
    <form id="form1" runat="server">
        Roles:
        <asp:DropDownList ID="DropDownList1" Runat="server">
        </asp:DropDownList>
        <asp:Button ID="Button1" Runat="server" Text="Get Users In Role" 
         OnClick="Button1_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView1" Runat="server">
        </asp:GridView>
    </form>
</body>
</html>
