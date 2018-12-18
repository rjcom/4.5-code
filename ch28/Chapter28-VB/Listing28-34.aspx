<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        ' Get the file path for the current web request
        Dim webPath As String = Request.ApplicationPath
        
        Try
            ' Get configuration object of the current web request
            Dim config As Configuration = _
              System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration(webPath)
        
            ' Create new connection setting from text boxes
            Dim newConnSetting As New  _
            ConnectionStringSettings(txtName.Text, txtValue.Text, txtProvider.Text)
        
            ' Add the connection string to the collection
            config.ConnectionStrings.ConnectionStrings.Add(newConnSetting)
        
            ' Save the changes
            config.Save()
        Catch cEx As ConfigurationErrorsException
            lblStatus.Text = "Status: " & cEx.ToString()
        Catch ex As System.UnauthorizedAccessException
            ' The ASP.NET process account must have read/write access to the directory
            lblStatus.Text = "Status: " & "The ASP.NET process account must have" & _
                "read/write access to the directory"
        Catch eEx As Exception
            lblStatus.Text = "Status: " & eEx.ToString()
        End Try
        
        ShowConnectionStrings()
    End Sub
    
    Protected Sub ShowConnectionStrings()
        GridView1.DataSource = System.Web.Configuration.WebConfigurationManager.ConnectionStrings
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
