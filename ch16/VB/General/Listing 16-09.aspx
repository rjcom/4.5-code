<%@ Page Language="VB" MasterPageFile="~/Listing 16-08.master" %>

<script runat="server" language="vb">
    Protected Sub Page_LoadComplete(ByVal sender As Object, _
       ByVal e As System.EventArgs)

        Label1.Text = CType(Master.FindControl("Label1"), Label).Text
    End Sub
  
    Protected Sub Button1_Click(ByVal sender As Object, _
       ByVal e As System.EventArgs)

        Label2.Text = "<b>Hello " & TextBox1.Text & "!</b>"
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" 
 runat="server">
    <b>Your GUID number from the master page is:<br />
    <asp:Label ID="Label1" runat="server" /></b><p>
    <b>Enter your name:</b><br />
    <asp:Textbox ID="TextBox1" runat="server" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" 
     OnClick="Button1_Click" /><br />
    <br />
    <asp:Label ID="Label2" runat="server" Font-Bold="True" /></p>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderId="ContentPlaceHolder2" 
 runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="Wrox.gif" />
</asp:Content>



