<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>jQuery</title>
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            var oldvalue = $("div").html();
            $("div").html(oldvalue + " " + new Date().toLocaleTimeString());
        });
    </script>
</head>
<body>
    <div>
      <i>jQuery</i>
    </div>
</body>
</html>
