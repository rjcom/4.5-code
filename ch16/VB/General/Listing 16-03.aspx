﻿<%@ Page Language="VB" MasterPageFile="~/Listing 16-01.master" Title="Untitled Page" %>

<script runat="server">    
   Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
       Label1.Text = "Hello " & HttpUtility.HtmlEncode(TextBox1.Text) & "!"
   End Sub
</script>

<asp:Content ID="Content1" ContentPlaceHolderId="ContentPlaceHolder1" 
 runat="server">
    <b>Enter your name:</b><br />
    <asp:Textbox ID="TextBox1" runat="server" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" 
     OnClick="Button1_Click" /><br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder2" 
 runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="wrox.gif" />
</asp:Content>


