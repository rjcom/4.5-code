
using System;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Text;
using System.Web.UI;
using System.Web.UI.Design;
namespace CSharpServerControl1
{
public class MultiRegionControlDesigner :
    System.Web.UI.Design.WebControls.CompositeControlDesigner {
          
    protected int _currentView = 0;
          
    private Listing0740 myControl;
    public override void Initialize(IComponent component)
    {
        base.Initialize(component);
        myControl = (Listing0740)component;
    }
          
    public override bool AllowResize { get { return true;}}
          
    protected override void OnClick(DesignerRegionMouseEventArgs e)
    {
        if (e.Region == null)
            return;
          
        if (e.Region.Name == "Header0" && _currentView != 0) {
            _currentView = 0;
            UpdateDesignTimeHtml();
        }
          
        if (e.Region.Name == "Header1" && _currentView != 1) {
            _currentView = 1;
            UpdateDesignTimeHtml();
        }
    }
          
    public override String GetDesignTimeHtml(DesignerRegionCollection regions)
    {
        BuildRegions(regions);
        return BuildDesignTimeHtml();
    }
          
    protected virtual void BuildRegions(DesignerRegionCollection regions)
    {
        regions.Add(new DesignerRegion(this, "Header0"));
        regions.Add(new DesignerRegion(this, "Header1"));
          
        // If the current view is for all, we need another editable region
        EditableDesignerRegion edr0 = new
            EditableDesignerRegion(this, "Content" + _currentView, false);
        edr0.Description = "Add stuff in here if you dare:";
        regions.Add(edr0);
          
        // Set the highlight, depending upon the selected region
        if (_currentView ==0 || _currentView==1)
            regions[_currentView].Highlight = true;
    }
          
    protected virtual string BuildDesignTimeHtml()
    {
        StringBuilder sb = new StringBuilder();
        sb.Append(BuildBeginDesignTimeHtml());
        sb.Append(BuildContentDesignTimeHtml());
        sb.Append(BuildEndDesignTimeHtml());
          
        return sb.ToString();
    }
          
    protected virtual String BuildBeginDesignTimeHtml()
    {
        // Create the table layout
        StringBuilder sb = new StringBuilder();
        sb.Append("<table ");
          
        // Styles that we'll use to render for the design-surface
        sb.Append("height='" + myControl.Height.ToString() + "' width='" +
            myControl.Width.ToString() +  "'>");
          
        // Generate the title or caption bar
        sb.Append("<tr height='25px' align='center' " +
            "style='font-family:tahoma;font-size:10pt;font-weight:bold;'>" +
            "<td style='width:50%' " + DesignerRegion.DesignerRegionAttributeName +
            "='0'>");
        sb.Append("Page-View 1</td>");
        sb.Append("<td style='width:50%' " +
            DesignerRegion.DesignerRegionAttributeName + "='1'>");
        sb.Append("Page-View 2</td></tr>");
          
        return sb.ToString();
    }
          
    protected virtual String BuildEndDesignTimeHtml()
    {
        return ("</table>");
    }
          
    protected virtual String BuildContentDesignTimeHtml()
    {
        StringBuilder sb = new StringBuilder();
        sb.Append("<td colspan='2' style='");
        sb.Append("background-color:" + myControl.BackColor.Name.ToString() +
            ";' ");
          
        sb.Append(DesignerRegion.DesignerRegionAttributeName + "='2'>");
          
        return sb.ToString();
    }
          
    public override string GetEditableDesignerRegionContent
        (EditableDesignerRegion region)
    {
        IDesignerHost host =
            (IDesignerHost)Component.Site.GetService(typeof(IDesignerHost));
          
        if (host != null) {
            ITemplate template = myControl.View1;
          
            if (region.Name == "Content1")
                template = myControl.View2;
          
            if (template != null)
                return ControlPersister.PersistTemplate(template, host);
        }
          
        return String.Empty;
    }
          
    public override void SetEditableDesignerRegionContent
         (EditableDesignerRegion region, string content)
    {
        int regionIndex = Int32.Parse(region.Name.Substring(7));
          
        if (content == null)
        {
            if (regionIndex == 0)
                myControl.View1 = null;
            else if (regionIndex == 1)
                myControl.View2 = null;
            return;
        }
          
        IDesignerHost host =
            (IDesignerHost)Component.Site.GetService(typeof(IDesignerHost));
          
        if (host != null)
        {
            ITemplate template = ControlParser.ParseTemplate(host, content);
          
            if (template != null)
            {
                if (regionIndex == 0)
                    myControl.View1 = template;
                else if (regionIndex == 1)
                    myControl.View2 = template;
            }
        }
    }
}

}