<%@ Page Language="C#" %>

<!DOCTYPE html>
<script src="Scripts/jquery-1.6.4.js"></script>
<script src="Scripts/jquery.signalR-1.0.1.js" type="text/javascript"></script>
<script src="<%= ResolveClientUrl("~/signalr/hubs") %>" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        // Proxy created on the fly          
        var chat = $.connection.cSChat;

        // Declare a function on the chat hub so the server can invoke it          
        chat.client.addMessage = function (message) {
            $('#messages').append('<li>' + message + '</li>');
        };

        // Start the connection
        $.connection.hub.start().done(function () {
            $("#broadcast").click(function () {
                // Call the chat method on the server
                chat.server.send($('#msg').val());
            });
        });
    });
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignalR Chat</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <input type="text" id="msg" />
            <input type="button" id="broadcast" value="Send" />

            <ul id="messages">
            </ul>
        </div>
    </form>
</body>
</html>
