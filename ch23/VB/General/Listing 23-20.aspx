<%@ Page Language="VB" %>

<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object,
       ByVal e As System.EventArgs)

        PopulateFields(TextBox1.Text)

    End Sub

    Private Sub PopulateFields(ByVal InputName As String)
        If InputName Is Nothing Then
            Label1.Text = "Hello there. What is your name?"
        Else
            Label1.Text = "Hello there " & HttpUtility.HtmlEncode(InputName)
        End If
    End Sub
</script>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Ajax Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
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
