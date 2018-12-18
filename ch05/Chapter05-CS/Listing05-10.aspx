<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string[] carArray = new[] { "Ford", "Honda", "BMW", "Dodge" };
        string[] airplaneArray = new[] {"Boeing 777", "Boeing 747",
            "Boeing 737"};
        string[] trainArray = new[] { "Bullet Train", "Amtrack", "Tram" };
        if (DropDownList1.SelectedValue == "Car")
        {
            DropDownList2.DataSource = carArray;
        }
        else if (DropDownList1.SelectedValue == "Airplane")
        {
            DropDownList2.DataSource = airplaneArray;
        }
        else if (DropDownList1.SelectedValue == "Train")
        {
            DropDownList2.DataSource = trainArray;
        }
        DropDownList2.DataBind();
        DropDownList2.Visible = DropDownList1.SelectedValue != "Select an Item";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("You selected <b>" +
        DropDownList1.SelectedValue.ToString() + ": " +
        DropDownList2.SelectedValue.ToString() + "</b>");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
