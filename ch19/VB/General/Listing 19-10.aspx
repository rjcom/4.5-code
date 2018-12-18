<%@ Page Language="VB" %>

<script runat="server">

    Protected Sub Button1_Click(ByVal sender As Object, _
      ByVal e As System.EventArgs)
        Try
            Membership.CreateUser(TextBox1.Text, TextBox2.Text)
            Label1.Text = "Successfully created user " & TextBox1.Text
        Catch ex As MembershipCreateUserException
            Select Case ex.StatusCode
                Case MembershipCreateStatus.DuplicateEmail
                    Label1.Text = "You have supplied a duplicate email address."
                Case MembershipCreateStatus.DuplicateUserName
                    Label1.Text = "You have supplied a duplicate username."
                Case MembershipCreateStatus.InvalidEmail
                    Label1.Text = "You have not supplied a proper email address."
                Case Else
                    Label1.Text = "ERROR: " & ex.Message.ToString()
            End Select
        End Try
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Creating a User</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Create User</h1>
        <p>Username<br />
            <asp:TextBox ID="TextBox1" Runat="server"></asp:TextBox>
        </p>
        <p>Password<br />
            <asp:TextBox ID="TextBox2" Runat="server" 
             TextMode="Password"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" Runat="server" Text="Create User" 
             OnClick="Button1_Click" />
        </p>
        <p>
            <asp:Label ID="Label1" Runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
