using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;

public class CSChat : Hub
{
    public void Send(string message)
    {
        // Call the addMessage method on all clients            
        Clients.All.addMessage(message);
    }   
}
