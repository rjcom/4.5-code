<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Using GroupName with RadioButton Controls</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:RadioButton ID="RadioButton1" runat="server" Text="Yes" GroupName="Set1" />
        <asp:RadioButton ID="RadioButton2" runat="server" Text="No" GroupName="Set1"/>
    </div>
    </form>
</body>
</html>
