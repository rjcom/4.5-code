using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;


namespace CS
{
    public class MyModelView : ModelDataSourceView
    {
        private readonly MyModelDataSource _owner;

        public MyModelView(MyModelDataSource owner)
            : base(owner)
        {
            _owner = owner;
        }
        protected override IEnumerable ExecuteSelect(DataSourceSelectArguments arguments)
        {
            CustomerContext _context = new CustomerContext();
            return _context.Customer.Take(3).AsEnumerable();         
        }
    }

    public class MyModelDataSource : ModelDataSource
    {
        private MyModelView _view;

        public MyModelDataSource(Control dataControl)
            : base(dataControl)
        {

        }
        public override ModelDataSourceView View
        {
            get
            {
                if (_view == null)
                {
                    _view = new MyModelView(this);
                }
                return _view;
            }
        }

    }
}