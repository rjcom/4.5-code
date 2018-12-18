<%@ Page Language="VB" %>

<script runat="server">
Protected Sub SqlDataSource1_Updated(ByVal sender As Object, 
    ByVal e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs)

    If (e.Exception IsNot Nothing) Then
        Me.lblMessage.Text = e.Exception.Message
        e.ExceptionHandled = True
    End If
End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
           SelectCommand="SELECT * FROM [Customers]"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            DataSourceMode="DataSet" OnUpdated="SqlDataSource1_Updated"
            ConflictDetection="CompareAllValues">
             <UpdateParameters>
                <asp:Parameter Name="CompanyName" Type="String" />
                <asp:Parameter Name="ContactName" Type="String" />
                <asp:Parameter Name="ContactTitle" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="Region" Type="String" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="Country" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="Fax" Type="String" />
                <asp:Parameter Name="original_CustomerID" Type="String" />
                <asp:Parameter Name="original_CompanyName" Type="String" />
                <asp:Parameter Name="original_ContactName" Type="String" />
                <asp:Parameter Name="original_ContactTitle" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_City" Type="String" />
                <asp:Parameter Name="original_Region" Type="String" />
                <asp:Parameter Name="original_PostalCode" Type="String" />
                <asp:Parameter Name="original_Country" Type="String" />
                <asp:Parameter Name="original_Phone" Type="String" />
                <asp:Parameter Name="original_Fax" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Label runat="server" ID="lblMessage" />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" />
    </div>
    </form>
</body>
</html>
