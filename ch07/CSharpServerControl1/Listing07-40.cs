using System.ComponentModel;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CSharpServerControl1
{
    [Designer(typeof(MultiRegionControlDesigner))]
    [ToolboxData("<{0}:Listing0740 runat=\"server\" width=\"100%\">" +
        "</{0}:Listing0740>")]
    public class Listing0740 : CompositeControl
    {

        // Define the templates that represent 2 views on the control
        private ITemplate _view1;
        private ITemplate _view2;

        // These properties are inner properties
        [PersistenceMode(PersistenceMode.InnerProperty), DefaultValue(null)]
        public virtual ITemplate View1
        {
            get { return _view1; }
            set { _view1 = value; }
        }

        [PersistenceMode(PersistenceMode.InnerProperty), DefaultValue(null)]
        public virtual ITemplate View2
        {
            get { return _view2; }
            set { _view2 = value; }
        }

        // The current view on the control; 0= view1, 1=view2, 2=all views
        private int _currentView = 0;
        public int CurrentView
        {
            get { return _currentView; }
            set { _currentView = value; }
        }

        protected override void CreateChildControls()
        {
            Controls.Clear();

            ITemplate template = View1;
            if (_currentView == 1)
                template = View2;

            Panel p = new Panel();
            Controls.Add(p);

            if (template != null)
                template.InstantiateIn(p);
        }
    }
}