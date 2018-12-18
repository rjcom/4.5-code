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
    [ToolboxData("<{0}:Listing0732 runat=server></{0}:Listing0732>")]
    public class Listing0732 : CompositeControl
    {
        protected TextBox textbox = new TextBox();

        public string Text
        {
            get
            {
                EnsureChildControls();
                return textbox.Text;
            }
            set
            {
                EnsureChildControls();
                textbox.Text = value;
            }
        }

        protected override void CreateChildControls()
        {
            this.Controls.Add(textbox);
            this.ChildControlsCreated = true;
        }
    }
}