<%@ Page Language="VB" %>

<%@ Register Src="~/Listing07-04.ascx" TagPrefix="uc1" TagName="Listing0704" %>


<!DOCTYPE html>

<script runat="server">
    Protected Sub Page_Load(sender As Object, e As EventArgs)
        Listing0704.Text = "The quick brown fox jumped over the lazy dog"
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:Listing0704 runat="server" ID="Listing0704" />
    </div>
    </form>
</body>
</html>
