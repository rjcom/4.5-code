<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Get the file path for the current web request
        string webPath = Request.ApplicationPath;

        // Get configuration object of the current web request
        Configuration config =
        System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration(webPath);

        // Create new connection setting from text boxes
        ConnectionStringSettings newConnSetting = new
        ConnectionStringSettings(txtName.Text, txtValue.Text, txtProvider.Text);

        try
        {
            // Add the connection string to the collection
            config.ConnectionStrings.ConnectionStrings.Add(newConnSetting);

            // Save the changes
            config.Save();
        }
        catch (ConfigurationErrorsException cEx)
        {
            lblStatus.Text = "Status: " + cEx.ToString();
        }
        catch (System.UnauthorizedAccessException uEx)
        {
            // The ASP.NET process account must have read/write access to the directory
            lblStatus.Text = "Status: " + "The ASP.NET process account must have" +
                "read/write access to the directory";
        }
        catch (Exception eEx)
        {
            lblStatus.Text = "Status: " + eEx.ToString();
        }

        // Reload the connection strings in the list box
        ShowConnectionStrings();
    }

    protected void ShowConnectionStrings()
    {
        GridView1.DataSource = System.Web.Configuration.WebConfigurationManager.ConnectionStrings;
        GridView1.DataBind();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" /><br /><br />
        Name: <asp:TextBox ID="txtName" runat="server" /><br />
        Value: <asp:TextBox ID="txtValue" runat="server" /><br />
        Provider: <asp:TextBox ID="txtProvider" runat="server" /><br /><br />
        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /><br /><br />
        <asp:Label ID="lblStatus" runat="server" />
    </div>
    </form>
</body>
</html>