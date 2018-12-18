<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) _
             Handles Me.Load

        If PreviousPage IsNot Nothing AndAlso PreviousPage.IsCrossPagePostBack Then
            Dim text As TextBox = _
                    CType(PreviousPage.FindControl("TextBox1"), TextBox)
            If text IsNot Nothing Then
                Label1.Text = text.Text
            End If
        End If

    End Sub
</script>

<html>
<head id="Head1" runat="server">
    <title>Step 2</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></div>
    </form>
</body>
</html>
