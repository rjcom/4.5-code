<%@ Page Language="VB" %>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If Not Page.IsPostBack Then
            MultiView1.ActiveViewIndex = 0
        End If
    End Sub
    Sub NextView(ByVal sender As Object, ByVal e As System.EventArgs)
        MultiView1.ActiveViewIndex += 1
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
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