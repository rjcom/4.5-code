<%@ Page Language="C#" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>jQuery</title>
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#button1").click(
                function () {
                    $("#label1").html("clicked at: " + new Date().toLocaleTimeString());
                }
            );
        });
    </script>
</head>
<body>
    <form runat="server">
        <span id="label1"></span>
        <input type="button" id="button1" value="Click!" />
    </form>
</body>
</html>
