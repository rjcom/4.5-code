<%@ Import Namespace="System.Web.Services" %>
<%@ Import Namespace="AjaxControlToolkit" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">

   <script runat="server" language="vb">

      <WebMethod, System.Web.Script.Services.ScriptMethod> 
       Public Shared Function GetStates(ByVal knownCategoryValues As String, 
         ByVal category As String) As CascadingDropDownNameValue()

          Return New CascadingDropDownNameValue() { New _
            CascadingDropDownNameValue("Missouri", "Missouri"), 
            New CascadingDropDownNameValue("Oregon", "Oregon") }
       End Function

      <WebMethod, System.Web.Script.Services.ScriptMethod> 
       Public Shared Function GetCounties(ByVal knownCategoryValues As String, 
         ByVal category As String) As CascadingDropDownNameValue()

          If knownCategoryValues.Contains("Missouri") Then
             Return New CascadingDropDownNameValue() { New _
               CascadingDropDownNameValue("St. Charles", "St. Charles"), _
               New CascadingDropDownNameValue("St. Louis", "St. Louis"), _
               New CascadingDropDownNameValue("Jefferson", "Jefferson"), _
               New CascadingDropDownNameValue("Warren", "Warren"), _
               New CascadingDropDownNameValue("Franklin", "Franklin") }
          End If
			
          If knownCategoryValues.Contains("Oregon") Then
            Return New CascadingDropDownNameValue() { New CascadingDropDownNameValue("Baker", "Baker"), _
              New CascadingDropDownNameValue("Benton", "Benton"), _
              New CascadingDropDownNameValue("Clackamas", "Clackamas"), _
              New CascadingDropDownNameValue("Clatsop", "Clatsop"), _
              New CascadingDropDownNameValue("Columbia", "Columbia") }
          End If

          Return Nothing
       End Function

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
