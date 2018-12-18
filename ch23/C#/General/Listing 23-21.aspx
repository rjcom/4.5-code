<%@ Page Language="C#" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        PopulateFields(TextBox1.Text);
    }

    private void PopulateFields(string InputName)
    {
        if (InputName == null)
        {
            Label1.Text = "Hello there. What is your name?";
        }
        else
        {
            Label1.Text = "Hello there " + InputName;
        }

        if (ScriptManager1.IsInAsyncPostBack && !ScriptManager1.IsNavigating)
        {
            ScriptManager1.AddHistoryPoint("myIndexPoint", InputName,
              string.Format("Entering name: {0}", InputName));
        }
        else
        {
            TextBox1.Text = InputName;
            Page.Title = string.Format("Entering name: {0}", InputName);
        }
    }

    protected void ScriptManager1_Navigate(object sender, HistoryEventArgs e)
    {
        PopulateFields(e.State["myIndexPoint"]);
    }

</script>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Ajax Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server" EnableHistory="True"
                OnNavigate="ScriptManager1_Navigate">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label1" runat="server"
                        Text="Hello there. What is your name?"></asp:Label><br />
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                    <asp:Button ID="Button1" runat="server" Text="Submit Name"
                        OnClick="Button1_Click" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </form>
</body>
</html>
