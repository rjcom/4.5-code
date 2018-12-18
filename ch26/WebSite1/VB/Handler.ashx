<%@ WebHandler Language="VB" Class="Handler" %>

Imports System.Web
Imports System.Web.WebSockets
Imports System.Net.WebSockets
Imports System.Threading.Tasks
Imports System.Threading
Imports System.Text

Public Class Handler
    Implements IHttpHandler

    Public Async Function MyWebSocket(context As AspNetWebSocketContext) As Task
        Dim socket As WebSocket = context.WebSocket
        While True
            Dim buffer As New ArraySegment(Of Byte)(New Byte(1023) {})

            ' Asynchronously wait for a message to arrive from a client
            Dim result As WebSocketReceiveResult = Await socket.ReceiveAsync(buffer, CancellationToken.None)

            ' If the socket is still open, echo the message back to the client
            If socket.State = WebSocketState.Open Then
                Dim userMessage As String = Encoding.UTF8.GetString(buffer.Array, 0, result.Count)
                userMessage = "You sent: " & userMessage & " at " & DateTime.Now.ToLongTimeString()
                buffer = New ArraySegment(Of Byte)(Encoding.UTF8.GetBytes(userMessage))

                ' Asynchronously send a message to the client
                Await socket.SendAsync(buffer, WebSocketMessageType.Text, True, CancellationToken.None)
            Else
                Exit While
            End If
        End While
    End Function

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Throw New NotImplementedException()
        End Get
    End Property

    Public Sub ProcessRequest(context As HttpContext) Implements IHttpHandler.ProcessRequest
        If context.IsWebSocketRequest Then
            context.AcceptWebSocketRequest(AddressOf MyWebSocket)
        End If
    End Sub


End Class
