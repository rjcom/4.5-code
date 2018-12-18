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
    [ToolboxData("<{0}:Listing0722 runat=server></{0}:Listing0722>")]
    public class Listing0722 : WebControl, ICallbackEventHandler
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

        protected override void RenderContents(HtmlTextWriter output)
        {
            output.RenderBeginTag(HtmlTextWriterTag.Div);
            output.AddAttribute(HtmlTextWriterAttribute.Type, "text");
            output.AddAttribute(HtmlTextWriterAttribute.Id, this.ClientID + "_i");
            output.AddAttribute(HtmlTextWriterAttribute.Name, this.ClientID + "_i");
            output.AddAttribute(HtmlTextWriterAttribute.Value, this.Text);
            output.AddAttribute("OnBlur", "ClientCallback();");
            output.RenderBeginTag(HtmlTextWriterTag.Input);
            output.RenderEndTag();
            output.RenderEndTag();
        }
        protected override void OnPreRender(EventArgs e)
        {
            Page.ClientScript.RegisterClientScriptInclude(
                "UtilityFunctions", "Listing07-23.js");

            Page.ClientScript.RegisterStartupScript(
                typeof(Page),
                "ControlFocus", "document.getElementById('" + this.ClientID + "_i" + "').focus();",
                true);

            Page.ClientScript.RegisterStartupScript(
                typeof(Page), "ClientCallback",
                "function ClientCallback() {" +
                    "args=document.getElementById('" + this.ClientID + "_i" + "').value;" +
                    Page.ClientScript.GetCallbackEventReference(this, "args",
                        "CallbackHandler", null, "ErrorHandler", true) + "}",
                true);
        }

        public void RaiseCallbackEvent(string eventArgument)
        {
            int result;
            if (!Int32.TryParse(eventArgument, out result))
                throw new Exception("The method or operation is not implemented.");
        }

        public string GetCallbackResult()
        {
            return "Valid Data";
        }
    }
}