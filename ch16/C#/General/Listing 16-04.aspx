<%@ Page Language="C#" MasterPageFile="~/Wrox.master" AutoEventWireup="true" CodeFile="Listing 16-04.aspx.cs" Inherits="Listing_16_04" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderId="ContentPlaceHolder1" 
 runat="server">
    <b>Enter your name:</b><br />
    <asp:Textbox ID="TextBox1" runat="server" />
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" /><br />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderId="ContentPlaceHolder2" 
 runat="server">
        <asp:Image ID="Image1" runat="server" ImageUrl="wrox.gif" />
</asp:Content>
