<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("mykey") = TextBox1.Text
    End Sub
</script>

<html>
<head id="Head1" runat="server">
    <title>Session State</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" Runat="server"></asp:TextBox>
        <asp:Button ID="Button1" Runat="server" Text="Store in Session" 
         OnClick="Button1_Click" />
        <br />
        <asp:HyperLink ID="HyperLink1" Runat="server" 
         NavigateUrl="Listing 21-02.aspx">Next Page</asp:HyperLink>
    </div>
    </form>
</body>
</html>

