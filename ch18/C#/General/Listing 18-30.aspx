<%@ Page Language="C#" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        if (DropDownList1.Items.Count == 0)
        {
            WriteDropdownList();
            WriteUserOutput();
        }                 
    }

    protected void DeleteButton_Click(object sender, EventArgs e)
    {
        ProfileManager.DeleteProfile(DropDownList1.Text.ToString());
        DropDownList1.Items.Clear();
        WriteDropdownList();
        WriteUserOutput();
    }

    protected void SelectButton_Click(object sender, EventArgs e)
    {
        WriteUserOutput();
    }

    protected void WriteUserOutput()
    {
        int outputInt;
        ProfileInfoCollection pic = new ProfileInfoCollection();
        if (DropDownList1.Text != "") {
            pic = ProfileManager.FindProfilesByUserName
               (ProfileAuthenticationOption.All, 
                DropDownList1.Text.ToString(), 0, 1, out outputInt);
        }
        DetailsView1.DataSource = pic;
        DetailsView1.DataBind();
    }

    protected void WriteDropdownList()
    {
        int outputInt;
        ProfileInfoCollection pic = new ProfileInfoCollection();
        pic = ProfileManager.Provider.GetAllProfiles
           (ProfileAuthenticationOption.All, 0, 10000, out outputInt);

        foreach (ProfileInfo proInfo in pic)
        {
            ListItem li = new ListItem();
            li.Text = proInfo.UserName.ToString();

            DropDownList1.Items.Add(li);
        }

        Label1.Text = outputInt.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>ProfileAdmin Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <b>Profile Manager<br />
        </b>
        <br />
        Total number of users in system:
        <asp:Label ID="Label1" runat="server"></asp:Label><br />
        &nbsp;<br />
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>&nbsp;
        <asp:Button ID="SelectButton" runat="server" 
         OnClick="SelectButton_Click"
            Text="Get User Profile Information" /><br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" CellPadding="4" 
         ForeColor="#333333" GridLines="None"
            Height="50px">
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <PagerStyle BackColor="#666666" ForeColor="White"   
             HorizontalAlign="Center" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <RowStyle BackColor="#E3EAEB" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
        </asp:DetailsView>
        <br />
        <asp:Button ID="DeleteButton" runat="server" 
         Text="Delete Selected User's Profile Information" 
         OnClick="DeleteButton_Click" />
    </div>
    </form>
</body>
</html>
