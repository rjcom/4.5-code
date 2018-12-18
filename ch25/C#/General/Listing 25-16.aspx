<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>jQuery</title>
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $.getJSON("Listing%2025-13.ashx",
                  { json: "true" },
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
