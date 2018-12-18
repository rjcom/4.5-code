<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            HiddenField1.Value = "value 1";
            ViewState["AnotherHiddenValue"] = "value 2";

            Person p = new Person()
            {
                firstName = "Christian",
                lastName = "Wenz"
            };
            ViewState["HiddenPerson"] = p;
        }
    }
</script>

<html>
<head id="Head1" runat="server">
    <title>Hidden Fields and ViewState</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <asp:HiddenField ID="HiddenField1" runat="server" />
        </div>
    </form>
</body>
</html>
