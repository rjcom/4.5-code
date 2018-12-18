<%@ Control Language="C#" ClassName="Listing07_04" %>
<script runat="server">
    public string Text { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Label1.Text = this.Text;
    }
</script>
<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>