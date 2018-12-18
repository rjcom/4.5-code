<%@ Page Language="VB" Inherits="SmartSessionPage2" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim p As Person = MyPerson
        Label1.Text = p.ToString()
    End Sub
</script>

<html>
<head id="Head1" runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" />
    </div>
    </form>
</body>
</html>
