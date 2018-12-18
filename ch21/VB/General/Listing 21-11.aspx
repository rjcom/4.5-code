<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) _
            Handles Me.Load

        If Not Page.IsPostBack Then
            HiddenField1.Value = "value 1"
            ViewState("AnotherHiddenValue") = "value 2"

            Dim p As New Person() With {
                .firstName = "Christian",
                .lastName = "Wenz"
            }
            ViewState("HiddenPerson") = p
        End If

    End Sub
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
