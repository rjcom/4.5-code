<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    void NextView(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex += 1;
    }
</script>
<head id="Head1" runat="server">
    <title>MultiView Server Control</title>
</head>
<body>
    <form id="form2" runat="server">
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <em>Making a Great Book</em><br />
                <br />
                Surround yourself with talented authors.<br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Next Step" OnClick="NextView" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <em>Making a Great Book</em><br />
                <br />
                Write content you are passionate about.<br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Next Step" OnClick="NextView" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <em>Making a Great Book</em><br />
                <br />
                Have a bunch of smart technical editors review your work.<br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Next Step" OnClick="NextView" />
            </asp:View>
            <asp:View ID="View4" runat="server">
                <em>Making a Great Book</em><br />
                <br />
                Release the book to publishing!
            </asp:View>
        </asp:MultiView>
    </form>
</body>
</html>