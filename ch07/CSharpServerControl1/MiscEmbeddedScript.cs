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
    [ToolboxData("<{0}:MiscEmbeddedScript runat=server></{0}:MiscEmbeddedScript>")]
    public class MiscEmbeddedScript : WebControl
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
                return ((s == null)? "[" + this.ID + "]" : s);
            }
 
            set
            {
                ViewState["Text"] = value;
            }
        }

        protected override void OnPreRender(EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptResource(
                typeof(MiscEmbeddedScript), "CSharpServerControl1.Listing07-21.js");
            Page.ClientScript.RegisterStartupScript(
                typeof(Page),
                "ControlFocus", "document.getElementById('" +
                this.ClientID + "_i" + "').focus();",
                true);
        }

        protected override void RenderContents(HtmlTextWriter output)
        {
            output.RenderBeginTag(HtmlTextWriterTag.Div);
            output.AddAttribute(HtmlTextWriterAttribute.Type, "text");
            output.AddAttribute(HtmlTextWriterAttribute.Id,
                                this.ClientID + "_i");
            output.AddAttribute(HtmlTextWriterAttribute.Name,
                                this.ClientID + "_i");
            output.AddAttribute(HtmlTextWriterAttribute.Value, this.Text);
            output.AddAttribute("OnBlur", "ValidateText(this)");
            output.RenderBeginTag(HtmlTextWriterTag.Input);
            output.RenderEndTag();
            output.RenderEndTag();
        }
    }
}