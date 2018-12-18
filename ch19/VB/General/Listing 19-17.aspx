<%@ Page Language="VB" %>

<script runat="server">

    Protected Sub Button1_Click(ByVal sender As Object, _
      ByVal e As System.EventArgs)

        If CheckBox1.Checked = True Then
            Dim user As MembershipUser = Membership.GetUser(TextBox1.Text)
            user.UnlockUser()
        End If
        
        If Membership.ValidateUser(TextBox1.Text, TextBox2.Text) Then
            Label1.Text = "You are logged on!"
        Else
            Dim user As MembershipUser = Membership.GetUser(TextBox1.Text)
            Label1.Text = "Locked out value: " & user.IsLockedOut.ToString()
        End If
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Login Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Login User</h1>
        <p>
            <asp:CheckBox ID="CheckBox1" runat="server" Text="Unlock User" />
        </p>
        <p>
            Username<br />
            <asp:TextBox ID="TextBox1" Runat="server"></asp:TextBox>
        </p>
        <p>Password<br />
            <asp:TextBox ID="TextBox2" Runat="server" 
             TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" Runat="server" Text="Login" 
             OnClick="Button1_Click" />
        </p>
        <p>
            <asp:Label ID="Label1" Runat="server"></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
