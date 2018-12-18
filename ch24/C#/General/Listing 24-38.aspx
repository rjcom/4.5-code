<%@ Import Namespace="System.Web.Services" %>
<%@ Import Namespace="AjaxControlToolkit" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">

    <script runat="server" language="C#">
        
        [WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static CascadingDropDownNameValue[]
               GetStates(string knownCategoryValues, string category)
        {
            return new[] { 
        new CascadingDropDownNameValue("Missouri", "Missouri"),
        new CascadingDropDownNameValue("Oregon", "Oregon") };
        }

        [WebMethod]
        [System.Web.Script.Services.ScriptMethod]
        public static CascadingDropDownNameValue[]
               GetCounties(string knownCategoryValues, string category)
        {
            if (knownCategoryValues.Contains("Missouri"))
            {
                return new[] {
                    new CascadingDropDownNameValue("St. Charles", "St. Charles"),
                    new CascadingDropDownNameValue("St. Louis", "St. Louis"),
                    new CascadingDropDownNameValue("Jefferson", "Jefferson"),
                    new CascadingDropDownNameValue("Warren", "Warren"),
                    new CascadingDropDownNameValue("Franklin", "Franklin") };
            }
            if (knownCategoryValues.Contains("Oregon"))
            {
                return new[] {
                    new CascadingDropDownNameValue("Baker", "Baker"),
                    new CascadingDropDownNameValue("Benton", "Benton"),
                    new CascadingDropDownNameValue("Clackamas", "Clackamas"),
                    new CascadingDropDownNameValue("Clatsop", "Clatsop"),
                    new CascadingDropDownNameValue("Columbia", "Columbia") };
            }
            return null;
        }

    </script>

    <title>CascadingDropDown</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:ToolkitScriptManager runat="server" ID="scriptManager" />
    <div>
        <asp:DropDownList runat="server" ID="ddl1" Width="200" />
        <br />
        <asp:DropDownList runat="server" ID="ddl2" Width="200" />
        <br />
        <asp:CascadingDropDown runat="server" ID="cdd1" TargetControlID="ddl1" 
            PromptText="Select a State"
            Category="state" LoadingText="[Loading States]" 
            ServiceMethod="GetStates" />
        <asp:CascadingDropDown runat="server" ID="cdd2" TargetControlID="ddl2" 
            ParentControlID="ddl1"
            PromptText="Select County" Category="county" 
            LoadingText="[Loading Counties]"
            ServiceMethod="GetCounties" />
    </div>
    </form>
</body>
</html>
