<%@ Page Language="VB" ValidateRequest="false" %>

<!DOCTYPE html>

<script runat="server">
    Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim RSSUrl As String = TextBox1.Text
        Label2.Text = "Loaded From Cache"
        If Cache(TextBox1.Text) Is Nothing Then
            Label2.Text = "Loaded Fresh"
            Dim itDepends As New RssCacheDependency(RSSUrl, 600)
            Cache.Insert(RSSUrl, itDepends.Document, itDepends)
        End If
        TextBox2.Text = CType(Cache(TextBox1.Text), _ 
            System.Xml.XmlDocument).OuterXml
    End Sub
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
