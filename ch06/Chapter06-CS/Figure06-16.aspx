<%@ Page Language="C#" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Validation Groups</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>.NET Valley User Group</h1>
            Username:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>&nbsp; Password:
                <asp:TextBox ID="TextBox2" runat="server"
                    TextMode="Password"></asp:TextBox>&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Login"
                    ValidationGroup="Login" />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                Text="* You must submit a username!" SetFocusOnError="true"
                ControlToValidate="TextBox1" ValidationGroup="Login">
            </asp:RequiredFieldValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                Text="* You must submit a password!"
                ControlToValidate="TextBox2" ValidationGroup="Login">
            </asp:RequiredFieldValidator>
            <p>
                .NET Valley usually meets the third Thursday of each month alternating meeting locations 
                between the Luzerne County Community College and Penn State Wilkes-Barre in Pennsylvania. 
                The .NET Valley User Group is unique in that meetings focus on technology in general 
                rather than just .NET technologies. Be sure to check the website for more details.<br />
            </p>
            <h2>Sign-up for the newsletter!</h2>
            Email:
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Sign-up"
                    ValidationGroup="Newsletter" />&nbsp;
                <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                runat="server"
                Text="* You must submit a correctly formatted email address!"
                ControlToValidate="TextBox3" ValidationGroup="Newsletter"
                ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
            </asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                Text="* You forgot your email address!"
                ControlToValidate="TextBox3" ValidationGroup="Newsletter">
            </asp:RequiredFieldValidator>
        </div>
    </form>
</body>
</html>