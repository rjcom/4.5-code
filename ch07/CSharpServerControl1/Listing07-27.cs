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
    [ToolboxData("<{0}:Listing0727 runat=server></{0}:Listing0727>")]
    public class Listing0727 : WebControl
    {
        string state;
        protected override void OnInit(EventArgs e)
        {
            Page.RegisterRequiresControlState(this);

            base.OnInit(e);
        }

        protected override void LoadControlState(object savedState)
        {
            state = (string)savedState;
        }

        protected override object SaveControlState()
        {
            return (object)"ControlSpecificData";
        }

        protected override void RenderContents(HtmlTextWriter output)
        {
            output.Write("Control State: " + state);
        }
    }
}