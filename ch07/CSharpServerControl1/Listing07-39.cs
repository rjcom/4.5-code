using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpServerControl1
{
[DefaultProperty("Text")]
[ToolboxData("<{0}:Listing0739 runat=server></{0}:Listing0739>")]
[Designer(typeof(System.Web.UI.Design.ControlDesigner))]
public class Listing0739 : WebControl
{
    [Bindable(true)]
    [Category("Appearance")]
    [DefaultValue("")]
    [Localizable(true)]
    public string Text
    {
        get
        {
            String s = (String)ViewState["Text"];
            return ((s == null) ? "[" + this.ID + "]" : s);
        }
        set
        {
            ViewState["Text"] = value;
        }
    }

    protected override void RenderContents(HtmlTextWriter output)
    {
        output.Write(Text);
    }
}
}
