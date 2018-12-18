<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
protected void Button_Command(object sender, CommandEventArgs e)
{
    switch (e.CommandName)
    {
        case ("DoSomething1"):
            Response.Write("Button 1 was selected");
            break;
        case ("DoSomething2"):
            Response.Write("Button 2 was selected");
            break;
    }
}
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" OnCommand="Button_Command" CommandName="DoSomething1" Text="Button 1" />
        <asp:Button ID="Button2" runat="server" OnCommand="Button_Command" CommandName="DoSomething2" Text="Button 2" />
    </div>
    </form>
</body>
</html>