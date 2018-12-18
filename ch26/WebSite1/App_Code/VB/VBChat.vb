Imports Microsoft.VisualBasic
Imports Microsoft.AspNet.SignalR

Public Class VBChat
    Inherits Hub
    Public Sub Send(message As String)
        ' Call the addMessage method on all clients            
        Clients.All.addMessage(message)
    End Sub
End Class
