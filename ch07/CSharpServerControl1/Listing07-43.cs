using System;
using System.ComponentModel;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpServerControl1
{
    [ToolboxData("<{0}:Listing0743 runat=server></{0}:Listing0743>")]
    public class Listing0743 : WebControl
    {
        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [Editor(typeof(System.Web.UI.Design.UrlEditor),
            typeof(System.Drawing.Design.UITypeEditor))]
        public string Url { get; set; }

        protected override void RenderContents(HtmlTextWriter output)
        {
            output.Write(this.Url);
        }
    }
}