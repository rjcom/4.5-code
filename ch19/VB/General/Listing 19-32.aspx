<%@ Page Language="VB" %>

<script runat="server">
   Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
       If Not Page.IsPostBack Then
          DropDownDataBind()
       End If
   End Sub

   Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       GridView1.DataSource = Roles.GetUsersInRole(DropDownList1.SelectedValue)
       GridView1.DataBind()
       DropDownDataBind()
   End Sub
    
   Protected Sub DropDownDataBind()
      DropDownList1.DataSource = Roles.GetAllRoles()
      DropDownList1.DataBind()
   End Sub

</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
