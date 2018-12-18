﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Listing31_10.aspx.vb" Inherits="VB_Listing31_10" Async="true" AsyncTimeout="1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ListView runat="server" ID="results" ItemType="Customer">
            <LayoutTemplate>
                <table>
                    <thead>
                        <tr><th>ID</th><th>First Name</th><th>Last Name</th></tr>
                    </thead>
                    <tbody id="itemPlaceholder" runat="server"></tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr><td><%#: Item.Id %></td><td><%#: Item.FirstName %></td><td><%#: Item.LastName %></td></tr>
            </ItemTemplate>
            <EmptyDataTemplate>No data.</EmptyDataTemplate>
        </asp:ListView>
    </div>
    </form>
</body>
</html>
