﻿<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>jQuery</title>
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $.get("Listing%2025-13.ashx", function (result) {
                $("div").text(result);
            });
        });
    </script>
</head>
<body>
    <div></div>
</body>
</html>