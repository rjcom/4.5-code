﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GlobalResources.aspx.cs" Inherits="Chapter32CS.GlobalResources" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text='<%$ Resources: Resource, PrivacyStatement %>'></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="<%$ Resources:Resource, PrivacyStatement %>"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
