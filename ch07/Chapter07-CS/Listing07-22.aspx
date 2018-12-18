<%@ Page Language="C#" %>

<%@ Register assembly="CSharpServerControl1" namespace="CSharpServerControl1" tagprefix="cc1" %>

<%@ Register assembly="VbServerControl1" namespace="VbServerControl1" tagprefix="cc2" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        C# <cc1:Listing0722 ID="Listing07221" runat="server" Text="911" /><br />
        VB 
    
        <cc2:Listing0722 ID="Listing07222" runat="server" Text="8675309" />
    
    </div>
    </form>
</body>
</html>