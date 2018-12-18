<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Listing03-02.aspx.vb" Inherits="ProfessionalASPNet45_03VB.Listing03_02" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Simple Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            What is your name?<br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Submit" 
                OnClick="Button1_Click" />
        </div>
        <div>
            <asp:Literal ID="Literal1" runat="server" />
        </div>
    </form>
</body>
</html>