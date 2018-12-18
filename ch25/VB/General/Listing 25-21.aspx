<%@ Page Language="VB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/css/smoothness/jquery-ui-1.10.0.custom.css" rel="stylesheet" />
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript" src="Scripts/jquery-ui-1.10.0.custom.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".dp").datepicker();
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <input type="text" class="dp" />
    </div>
    </form>
</body>
</html>
