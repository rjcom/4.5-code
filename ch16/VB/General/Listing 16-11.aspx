<%@ Page Language="VB" MasterPageFile="~/Listing 16-10.master" %>
<%@ MasterType VirtualPath="~/Listing 16-10.master" %>

<script runat="server" language="vb">    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Master.PageHeadingTitle = "My Company – Division X"
    End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>

