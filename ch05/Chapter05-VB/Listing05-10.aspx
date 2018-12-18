<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object,
     ByVal e As System.EventArgs)
        Dim CarArray() As String = {"Ford", "Honda", "BMW", "Dodge"}
        Dim AirplaneArray() As String = {"Boeing 777", "Boeing 747", "Boeing 737"}
        Dim TrainArray() As String = {"Bullet Train", "Amtrack", "Tram"}
        If DropDownList1.SelectedValue = "Car" Then
            DropDownList2.DataSource = CarArray
        ElseIf DropDownList1.SelectedValue = "Airplane" Then
            DropDownList2.DataSource = AirplaneArray
        ElseIf DropDownList1.SelectedValue = "Train" Then
            DropDownList2.DataSource = TrainArray
        End If
        DropDownList2.DataBind()
        DropDownList2.Visible = (DropDownList1.SelectedValue <> _
            "Select an Item")
    End Sub
    Protected Sub Button1_Click(ByVal sender As Object,
        ByVal e As System.EventArgs)
        Response.Write("You selected <b>" & _
        DropDownList1.SelectedValue.ToString() & ": " &
        DropDownList2.SelectedValue.ToString() & "</b>")
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DropDownList Page</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select transportation type:<br />
            <asp:DropDownList ID="DropDownList1" runat="server"
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                AutoPostBack="true">
                <asp:ListItem>Select an Item</asp:ListItem>
                <asp:ListItem>Car</asp:ListItem>
                <asp:ListItem>Airplane</asp:ListItem>
                <asp:ListItem>Train</asp:ListItem>
            </asp:DropDownList>&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" Visible="false">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Text="Select Options"
                OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>