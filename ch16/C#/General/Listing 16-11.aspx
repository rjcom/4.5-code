<%@ Page Language="C#" MasterPageFile="~/Listing 16-10.master" %>
<%@ MasterType VirtualPath="~/Listing 16-10.master" %>

<script runat="server">    
    protected void Page_Load(object sender, EventArgs e)
    {
        Master.PageHeadingTitle = "My Company – Division X";
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

