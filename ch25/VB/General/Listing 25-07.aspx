﻿<%@ Page Language="VB" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>jQuery</title>
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $("body").append(
                $("<a>").attr("href", "http://jquery.com/").html("jQuery")
            );
        });
    </script>
</head>
<body>
</body>
</html>
