<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(Object sender, EventArgs e)
    {
        // List all the SectionGroups in machine.config file
        Configuration configSetting =
            System.Configuration.ConfigurationManager.OpenMachineConfiguration();
        GridView1.DataSource = configSetting.SectionGroups;
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
        <asp:GridView ID="GridView1" runat="server" />
    </div>
    </form>
</body>
</html>
