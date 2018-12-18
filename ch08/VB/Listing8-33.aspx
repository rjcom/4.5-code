<%@ Page Language="VB" %>

<script runat="server">
    Protected Sub GridView1_RowDataBound(ByVal sender As Object,
        ByVal e As System.Web.UI.WebControls.GridViewRowEventArgs)

        'Check for a row in edit mode.
        If ((e.Row.RowState = DataControlRowState.Edit) Or
            (e.Row.RowState = (DataControlRowState.Alternate Or
            DataControlRowState.Edit))) Then

            Dim drv As System.Data.DataRowView =
                CType(e.Row.DataItem, System.Data.DataRowView)

            Dim ddl As DropDownList =
                CType(e.Row.Cells(8).
                    FindControl("DropDownList1"), DropDownList)
            Dim li As ListItem = ddl.Items.
                FindByValue(drv("Country").ToString())
            li.Selected = True
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
        <asp:GridView ID="GridView1" Runat="server" DataSourceID="SqlDataSource1"
             DataKeyNames="CustomerID" AutoGenerateColumns="False"
             AllowSorting="True" AllowPaging="True" 
             OnRowDataBound="GridView1_RowDataBound">
            <Columns>
            <asp:CommandField ShowHeader="True" HeaderText="Command"
                 ShowEditButton="True"></asp:CommandField>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" 
                    SortExpression="CustomerID" />
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" 
                    SortExpression="CompanyName" />
                <asp:BoundField DataField="ContactName" HeaderText="ContactName" 
                    SortExpression="ContactName" />
                <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" 
                    SortExpression="ContactTitle" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="Region" HeaderText="Region" 
                    SortExpression="Region" />
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" 
                    SortExpression="PostalCode" />

                <asp:TemplateField HeaderText="Country">
                    <ItemTemplate><%# Eval("Country") %></ItemTemplate>
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList1" runat="server"
                            DataSourceID="SqlDataSource2"
                            DataTextField="Country" DataValueField="Country">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                            SelectCommand="SELECT DISTINCT [Country] FROM [Customers]">
                        </asp:SqlDataSource>
                    </EditItemTemplate>
                </asp:TemplateField>
                
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" Runat="server"
             SelectCommand="SELECT * FROM [Customers]"
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
             DataSourceMode="DataSet"
             UpdateCommand="UPDATE [Customers] SET [CompanyName] = @CompanyName,
                  [ContactName] = @ContactName, [ContactTitle] = @ContactTitle,
                  [Address] = @Address, [City] = @City, [Region] = @Region,
                  [PostalCode] = @PostalCode, [Country] = @Country, [Phone] = @Phone,
                  [Fax] = @Fax WHERE [CustomerID] = @original_CustomerID">
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


