<%@ Page Language="VB" Inherits="SmartSessionPage2" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim names As String()
        names = TextBox1.Text.Split(" "c) ' " "c creates a char
        Dim p As New Person() With {
            .firstName = names(0),
            .lastName = names(1)
        }
        MyPerson = p
    End Sub
</script>

<html>
<head id="Head1" runat="server">
    <title>Session State</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Store in Session"
                OnClick="Button1_Click" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server"
                NavigateUrl="Listing 21-08.aspx">Next Page</asp:HyperLink>
        </div>
    </form>
</body>
</html>

