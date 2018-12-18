<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>PagingBulletedListExtender Control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </ajaxToolkit:ToolkitScriptManager>
        <ajaxToolkit:PagingBulletedListExtender ID="PagingBulletedListExtender1" 
         runat="server" TargetControlID="BulletedList1">
        </ajaxToolkit:PagingBulletedListExtender>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=.\SQLEXPRESS;
               AttachDbFilename=|DataDirectory|\NORTHWND.MDF;
               Integrated Security=True;User Instance=True" 
            ProviderName="System.Data.SqlClient" 
            SelectCommand="SELECT [CompanyName] FROM [Customers]">
        </asp:SqlDataSource>
        <asp:BulletedList ID="BulletedList1" runat="server" 
            DataSourceID="SqlDataSource1" DataTextField="CompanyName" 
            DataValueField="CompanyName">
        </asp:BulletedList>
    </div>
    </form>
</body>
</html>
