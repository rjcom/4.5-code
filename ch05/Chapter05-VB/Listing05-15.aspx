<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub RadioButton_CheckedChanged(ByVal sender As Object,
       ByVal e As System.EventArgs)
        If RadioButton1.Checked = True Then
            Response.Write("You selected Visual Basic")
        Else
            Response.Write("You selected C#")
        End If
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>RadioButton control</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Visual Basic"
                GroupName="LanguageChoice" OnCheckedChanged="RadioButton_CheckedChanged"
                AutoPostBack="True" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="C#"
                GroupName="LanguageChoice" OnCheckedChanged="RadioButton_CheckedChanged"
                AutoPostBack="True" />
        </div>
    </form>
</body>
</html>