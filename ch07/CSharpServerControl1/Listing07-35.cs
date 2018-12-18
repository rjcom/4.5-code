using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpServerControl1
{
    internal sealed class DefaultMessageTemplate : ITemplate
    {
        public void InstantiateIn(Control container)
        {
            Literal l = new Literal();
            l.Text = "No MessageTemplate was included.";
            container.Controls.Add(l);
        }
    }
}