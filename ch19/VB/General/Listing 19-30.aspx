<%@ Page Language="VB" %>

<script runat="server">
   Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
       If Not Page.IsPostBack Then
          ListBoxDataBind()
       End If
   End Sub

   Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       Roles.CreateRole(TextBox1.Text)
       ListBoxDataBind()
   End Sub
    
   Protected Sub ListBoxDataBind()
       ListBox1.DataSource = Roles.GetAllRoles()
       ListBox1.DataBind()
   End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
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
