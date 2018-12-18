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
    [ToolboxData("<{0}:Listing0729 runat=server></{0}:Listing0729>")]
    public class Listing0729 : WebControl, IPostBackEventHandler
    {
        public event EventHandler Click;

        public virtual void OnClick(EventArgs e)
        {
            if (Click != null)
            {
                Click(this, e);
            }
        }

        public void RaisePostBackEvent(string eventArgument)
        {
            OnClick(EventArgs.Empty);
        }

        protected override void RenderContents(HtmlTextWriter output)
        {
            PostBackOptions p = new PostBackOptions(this);
            output.AddAttribute(HtmlTextWriterAttribute.Onclick,
                Page.ClientScript.GetPostBackEventReference(p));
            output.AddAttribute(HtmlTextWriterAttribute.Id,
                                this.ClientID + "_i");
            output.AddAttribute(HtmlTextWriterAttribute.Name,
                                this.ClientID + "_i");
            output.RenderBeginTag(HtmlTextWriterTag.Button);
            output.Write("My Button");
            output.RenderEndTag();
        }
    }
}