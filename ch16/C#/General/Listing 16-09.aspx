<%@ Page Language="C#" MasterPageFile="~/Listing 16-08.master" Title="Untitled Page" %>

<script runat="server">

    protected void Page_LoadComplete(object sender, EventArgs e)
    {
        Label1.Text = (Master.FindControl("Label1") as Label).Text;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Label2.Text = "<b>Hello " + TextBox1.Text + "!</b>";
    }
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



