using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpServerControl1
{
    public class Message : Panel, INamingContainer
    {
        public string Name { get; internal set; }
        public string Text { get; internal set; }
    }
}