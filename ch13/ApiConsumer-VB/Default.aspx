<%@ Page Language="VB" %>
<%@ Import Namespace="System.Net.Http" %>
<%@ Import Namespace="System.Net.Http.Headers" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim client As HttpClient = New HttpClient()
        client.BaseAddress = New Uri("http://localhost:43059/")
        client.DefaultRequestHeaders.Accept.Add( _
            New MediaTypeWithQualityHeaderValue("application/json"))
        
        Dim response As HttpResponseMessage = client.GetAsync("api/products/710").Result
        If (response.IsSuccessStatusCode) Then
            Dim prod As Product = response.Content.ReadAsAsync(Of Product)().Result
            NameLabel.Text = prod.Name
            ColorLabel.Text = prod.Color
        Else
            ErrorLabel.Text = response.ReasonPhrase
        End If
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Web API Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Product Name: <asp:Label ID="NameLabel" runat="server" /><br />
        Color: <asp:Label ID="ColorLabel" runat="server" /><br /><br />
        <asp:Label ID="ErrorLabel" runat="server" />
    </div>
    </form>
</body>
</html>