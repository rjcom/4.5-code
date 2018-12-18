<%@ Page Language="VB" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>jQuery</title>
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $.post("Listing%2025-13.ashx",
                   { a: 1, b: 2 },
                   function (result) {
                       $("div").text(result);
                   });
        });
    </script>
</head>
<body>
    <div></div>
</body>
</html>
