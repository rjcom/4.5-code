<%@ Page Language="VB" %>

<script runat="server">
    Protected Sub GridView1_RowDeleted(ByVal sender As Object, 
       ByVal e As GridViewDeletedEventArgs)
 
        If (Not IsDBNull (e.Exception)) Then
            Me.lblErrorMessage.Text = e.Exception.Message
            e.ExceptionHandled = True
        End If
    End Sub

    Protected Sub SqlDataSource1_Deleted(ByVal sender As Object, 
        ByVal e As System.Web.UI.WebControls.SqlDataSourceStatusEventArgs)

        If (e.Exception IsNot Nothing) Then
            Me.lblErrorMessage.Text = e.Exception.Message
            e.ExceptionHandled = True
        End If
    End Sub
</script>

<html>
<head id="Head1" runat="server">
    <title>Using the GridView server control</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblErrorMessage" runat="server" />
        <asp:GridView ID="GridView1" Runat="server" DataSourceID="SqlDataSource1"
             DataKeyNames="CustomerID" AutoGenerateColumns="True"
             AllowSorting="True" AllowPaging="True"
             AutoGenerateEditButton="true" AutoGenerateDeleteButton="true"
             OnRowDeleted="GridView1_RowDeleted"/>

        <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
             SelectCommand="SELECT * FROM [Customers]"
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
             DataSourceMode="DataSet" OnDeleted="SqlDataSource1_Deleted"
             DeleteCommand="DELETE From Customers WHERE (CustomerID = @CustomerID)"
             UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName,
                  [ContactName] = @ContactName, [ContactTitle] = @ContactTitle,
                  [Address] = @Address, [City] = @City, [Region] = @Region,
                  [PostalCode] = @PostalCode, [Country] = @Country, [Phone] = @Phone,
                  [Fax] = @Fax WHERE [CustomerID] = @original_CustomerID">                  
            <DeleteParameters>
               <asp:Parameter Name="CustomerID" Type="String">
               </asp:Parameter>
            </DeleteParameters>
             <UpdateParameters>
                 <asp:Parameter Type="String" Name="CompanyName"></asp:Parameter>
                 <asp:Parameter Type="String" Name="ContactName"></asp:Parameter>
                 <asp:Parameter Type="String" Name="ContactTitle"></asp:Parameter>
                 <asp:Parameter Type="String" Name="Address"></asp:Parameter>
                 <asp:Parameter Type="String" Name="City"></asp:Parameter>
                 <asp:Parameter Type="String" Name="Region"></asp:Parameter>
                 <asp:Parameter Type="String" Name="PostalCode"></asp:Parameter>
                 <asp:Parameter Type="String" Name="Country"></asp:Parameter>
                 <asp:Parameter Type="String" Name="Phone"></asp:Parameter>
                 <asp:Parameter Type="String" Name="Fax"></asp:Parameter>
                 <asp:Parameter Type="String" Name="CustomerID"></asp:Parameter>
             </UpdateParameters>
        </asp:SqlDataSource>

    </div>
    </form>
</body>
</html>