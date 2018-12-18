<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <em>Making a Great Book</em><br />
                <br />
                Surround yourself with talented authors.<br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Next Step" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <em>Making a Great Book</em><br />
                <br />
                Write content you are passionate about.<br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Next Step" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <em>Making a Great Book</em><br />
                <br />
                Have a bunch of smart technical editors review your work.<br />
                <br />
                <asp:Button ID="Button3" runat="server" Text="Next Step" />
            </asp:View>
            <asp:View ID="View4" runat="server">
                <em>Making a Great Book</em><br />
                <br />
                Release the book to publishing!
            </asp:View>
        </asp:MultiView>
    </div>
    </form>
</body>
</html>
