<%@ Control Language="VB" ClassName="Listing07_04" %>
<script runat="server">
    Public Property Text() As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Me.Label1.Text = Me.Text
    End Sub
</script>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>