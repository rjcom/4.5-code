<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EntityDataSource.aspx.cs" Inherits="AspnetEntityFx.EntityDataSource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server"
            DataSourceID="EntityDataSource1" AllowPaging="True"></asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server"
            ConnectionString="name=AdventureWorks2012_DataEntities1"
            DefaultContainerName="AdventureWorks2012_DataEntities1"
            EnableDelete="True" EnableFlattening="False"
            EnableInsert="True" EnableUpdate="True"
            EntitySetName="Customers"></asp:EntityDataSource>
    </div>
    </form>
</body>
</html>
