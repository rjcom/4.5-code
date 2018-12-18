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
    [ToolboxData("<{0}:Listing0730 runat=server></{0}:Listing0730>")]
    public class Listing0730 : WebControl, IPostBackEventHandler, IPostBackDataHandler
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
            PostBackOptions p = new PostBackOptions(this);
            output.AddAttribute(HtmlTextWriterAttribute.Id, this.ClientID);
            output.AddAttribute(HtmlTextWriterAttribute.Name,
                                this.ClientID);
            output.AddAttribute(HtmlTextWriterAttribute.Value, this.Text);
            output.RenderBeginTag(HtmlTextWriterTag.Input);
            output.RenderEndTag();
        }

        public bool LoadPostData(string postDataKey,
        System.Collections.Specialized.NameValueCollection postCollection)
        {
            this.Text = postCollection[postDataKey];
            return false;
        }

        public void RaisePostDataChangedEvent()
        {
        }

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
    }
}