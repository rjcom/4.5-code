using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Web.UI;
using System.Web.UI.Design;
using System.Web.UI.WebControls;

namespace CSharpServerControl1
{
    public class Listing0742Designer : ControlDesigner
    {
        private DesignerActionListCollection _actionLists = null;

        public override DesignerActionListCollection ActionLists
        {
            get
            {
                if (_actionLists == null)
                {
                    _actionLists = new DesignerActionListCollection();
                    _actionLists.AddRange(base.ActionLists);
                    _actionLists.Add(new ServerControl44ControlList(this));
                }
                return _actionLists;
            }
        }

        private sealed class ServerControl44ControlList :
                                DesignerActionList
        {
            public ServerControl44ControlList(ControlDesigner c)
                : base(c.Component)
            {
            }

            public override DesignerActionItemCollection
                GetSortedActionItems()
            {
                DesignerActionItemCollection c =
                    new DesignerActionItemCollection();
                c.Add(new DesignerActionTextItem("Text Action Item",
                                                    "Custom Category"));
                return c;
            }
        }
    }

    [DesignerAttribute(typeof(Listing0742Designer))]
    [ToolboxData("<{0}:Listing0742 runat=server></{0}:Listing0742>")]
    public class Listing0742 : WebControl
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