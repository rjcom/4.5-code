<%@ Page Language="VB" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>jQuery</title>
    <script type="text/javascript" src="Scripts/jquery.js"></script>
    <script type="text/javascript">
        $(function () {
            $.ajax({
                url: "Listing%2025-18.asmx/getLinks",
                contentType: "application/json",
                dataType: "json",
                type: "POST",
                success: function (result) {
                    var links = result.d;
                    $.each(links, function (key, value) {
                        $("<li>").append(
                            $("<a>").attr("href", value.Url).text(value.Text)
                        ).appendTo("ul");
                    });
                }
            });
        });
    </script>
</head>
<body>
    <ul></ul>
</body>
</html>
