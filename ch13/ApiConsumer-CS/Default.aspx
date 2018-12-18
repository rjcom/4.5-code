<%@ Page Language="C#" %>
<%@ Import Namespace="System.Net.Http" %>
<%@ Import Namespace="System.Net.Http.Headers" %>
<!DOCTYPE html>
<script runat="server">
    protected void Page_Load(Object sender, EventArgs e)
    {
        HttpClient client = new HttpClient();
        client.BaseAddress = new Uri("http://localhost:43059/");
        client.DefaultRequestHeaders.Accept.Add(
            new MediaTypeWithQualityHeaderValue("application/json"));
        
        HttpResponseMessage response = client.GetAsync("api/products/710").Result;
        if (response.IsSuccessStatusCode)
        {
            var product = response.Content.ReadAsAsync<Product>().Result;
            NameLabel.Text = product.Name;
            ColorLabel.Text = product.Color;
        }
        else
        {
            ErrorLabel.Text = response.ReasonPhrase;
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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