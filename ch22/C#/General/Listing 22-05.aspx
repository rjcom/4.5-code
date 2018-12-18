<%@ Page Language="C#" ValidateRequest="false" %>

<!DOCTYPE html>

<script runat="server">
    void Button1_Click(object sender, System.EventArgs e)
    {
        string RSSUrl = TextBox1.Text;
        Label2.Text = "Loaded From Cache";
        if (Cache[TextBox1.Text] == null)
        {
            Label2.Text = "Loaded Fresh";
            RssCacheDependency itDepends = new RssCacheDependency(RSSUrl, 30);
            Cache.Insert(RSSUrl, itDepends.Document, itDepends);
        }
        TextBox2.Text = ((System.Xml.XmlDocument)Cache[TextBox1.Text]).OuterXml;
    }
</script>

<html>
<head id="Head1" runat="server">
    <title>Custom Cache Dependency Example</title>
</head>
<body>
    <form id="Form1" runat="server"> RSS URL:
       <asp:TextBox ID="TextBox1" Runat="server"/>
       <asp:Button ID="Button1" onclick="Button1_Click" Runat="server" 
        Text="Get RSS" />
        Cached:<asp:Label ID="Label2" Runat="server"></asp:Label><br />
        RSS:<br />
        <asp:TextBox ID="TextBox2" Runat="server" TextMode="MultiLine"
         Width="800px" Height="300px"></asp:TextBox>
    </form>
</body>
</html>
