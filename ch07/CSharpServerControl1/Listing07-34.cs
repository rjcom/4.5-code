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
    [ToolboxData("<{0}:Listing0734 runat=server></{0}:Listing0734>")]
    public class Listing0734 : WebControl
    {
        [Browsable(false)]
        public Message TemplateMessage { get; internal set; }

        [PersistenceMode(PersistenceMode.InnerProperty)]
        [TemplateContainer(typeof(Message))]
        public virtual ITemplate MessageTemplate { get; set; }

        [Bindable(true)]
        [DefaultValue("")]
        public string Name { get; set; }

        [Bindable(true)]
        [DefaultValue("")]
        public string Text { get; set; }

        public override void DataBind()
        {
            EnsureChildControls();
            ChildControlsCreated = true;

            base.DataBind();
        }

        protected override void CreateChildControls()
        {
            this.Controls.Clear();
            this.TemplateMessage = new Message() { Name = Name, Text = Text };

            if (this.MessageTemplate == null)
            {
                this.MessageTemplate = new DefaultMessageTemplate();
            }

            this.MessageTemplate.InstantiateIn(this.TemplateMessage);
            Controls.Add(this.TemplateMessage);
        }

        protected override void RenderContents(HtmlTextWriter writer)
        {
            EnsureChildControls();
            ChildControlsCreated = true;

            base.RenderContents(writer);
        }
    }
}