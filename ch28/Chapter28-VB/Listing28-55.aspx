﻿<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Dim cs As MyCompanySettings = New MyCompanySettings()
        cs = ConfigurationManager.GetSection("MyCompanySettings")
        Response.Write(cs.Key1 + "<br />")
        Response.Write(cs.Key2)
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