<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        ' List all the SectionGroups in machine.config file
        Dim configSetting As Configuration =
          System.Configuration.ConfigurationManager.OpenMachineConfiguration()
        GridView1.DataSource = configSetting.SectionGroups
        GridView1.DataBind()
    End Sub
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