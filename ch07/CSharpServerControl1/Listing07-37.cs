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
    [ToolboxData("<{0}:Listing0737 runat=server></{0}:Listing0737>")]
    public class Listing0737 : WebControl
    {
        [Bindable(true)]
        [Category("Appearance")]
        [DefaultValue("")]
        [TypeConverter(typeof(GuidConverter))]
        public Guid BookId { get; set; }

        protected override void RenderContents(HtmlTextWriter output)
        {
            output.Write(BookId.ToString());
        }
    }
}