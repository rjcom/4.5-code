<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["mykey"] = TextBox1.Text;
    }
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

