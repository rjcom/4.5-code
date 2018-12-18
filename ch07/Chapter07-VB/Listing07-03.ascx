<%@ Control Language="VB" ClassName="Listing07_03" %>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object,
                            ByVal e As System.EventArgs)
        Me.Label1.Text = "The quick brown fox jumped over the lazy dog"
    End Sub
          
    Protected Sub Button1_Click(ByVal sender As Object,
                                ByVal e As System.EventArgs)
        Me.Label1.Text =
                  "The quick brown fox clicked the button on the page"
    End Sub
</script>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
<asp:Button ID="Button1" runat="server" Text="Button" />