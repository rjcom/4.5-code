<%@ Page Language="VB" %>

<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If (DropDownList1.Items.Count = 0) Then
            WriteDropdownList()
            WriteUserOutput()
        End If
    End Sub

    Protected Sub DeleteButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        ProfileManager.DeleteProfile(DropDownList1.Text.ToString())
        DropDownList1.Items.Clear()
        WriteDropdownList()
        WriteUserOutput()
    End Sub

    Protected Sub SelectButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        WriteUserOutput()
    End Sub
    
    Protected Sub WriteUserOutput()
        Dim outputInt As Integer
        Dim pic As ProfileInfoCollection = New ProfileInfoCollection()
        If DropDownList1.Text <> "" Then
            pic = ProfileManager.FindProfilesByUserName( _
                ProfileAuthenticationOption.All, _
                DropDownList1.Text, 0, 1, outputInt)
        End If

        DetailsView1.DataSource = pic
        DetailsView1.DataBind()
    End Sub
    
    Protected Sub WriteDropdownList()
        Dim outputInt As Integer
        Dim pic As ProfileInfoCollection = New ProfileInfoCollection()
        pic = ProfileManager.Provider.GetAllProfiles( _
            ProfileAuthenticationOption.All, 0, 10000, outputInt)

        For Each proInfo As ProfileInfo In pic
            Dim li As ListItem = New ListItem()
            li.Text = proInfo.UserName.ToString()

            DropDownList1.Items.Add(li)
        Next

        Label1.Text = outputInt.ToString()
    End Sub
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
