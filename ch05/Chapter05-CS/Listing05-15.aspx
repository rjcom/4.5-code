<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void RadioButton_CheckedChanged(object sender, EventArgs e)
    {
        if (RadioButton1.Checked == true)
        {
            Response.Write("You selected Visual Basic");
        }
        else
        {
            Response.Write("You selected C#");
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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