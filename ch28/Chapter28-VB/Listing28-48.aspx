﻿<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim nv As NameValueCollection = New NameValueCollection()
        nv = System.Configuration.ConfigurationManager.GetSection("MyCompanyAppSettingsNVExample")
        Response.Write(nv("Key1") + "<br />")
        Response.Write(nv("Key2"))
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>