<%@ Page Language="C#" %>

<script runat="server">
    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        if (e.Exception != null)
        {
            this.lblErrorMessage.Text = e.Exception.Message;
            e.ExceptionHandled = true;
        }
    }

    protected void SqlDataSource1_Deleted(object sender,
        SqlDataSourceStatusEventArgs e)
    {
        if (e.Exception != null)
        {
            this.lblErrorMessage.Text = e.Exception.Message;
            e.ExceptionHandled = true;
        }
    }
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