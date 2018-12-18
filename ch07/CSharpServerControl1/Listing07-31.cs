using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpServerControl1
{
    [DefaultProperty("Text")]
    [ToolboxData("<{0}:Listing0731 runat=server></{0}:Listing0731>")]
    public class Listing0731 : CompositeControl
    {
        protected TextBox textbox = new TextBox();

        protected override void CreateChildControls()
        {
            this.Controls.Add(textbox);
        }
    }
}