<%@ Page Language="C#" %>

<script runat="server">
   protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
   {
      Listbox1.Items.Add(e.Item.Parent.Value + " : " + e.Item.Value);
   }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Menu Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Menu ID="Menu1" Runat="server" DataSourceID="XmlDataSource1" 
         OnMenuItemClick="Menu1_MenuItemClick">
            <DataBindings>
                <asp:MenuItemBinding DataMember="Item" 
                 TextField="Category"></asp:MenuItemBinding>
                <asp:MenuItemBinding DataMember="Option" 
                 TextField="Choice"></asp:MenuItemBinding>
            </DataBindings>
        </asp:Menu>
        <p>
        <asp:ListBox ID="Listbox1" Runat="server">
        </asp:ListBox></p>
        <asp:xmldatasource ID="XmlDataSource1" runat="server" 
         datafile="Hardware.xml" />
    </form>
</body>
</html>
