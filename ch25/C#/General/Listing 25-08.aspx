<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>jQuery</title>
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $("<a>").attr("href", "http://jquery.com/")
                    .html("jQuery")
                    .appendTo("body");
        });
    </script>
</head>
<body>
</body>
</html>
