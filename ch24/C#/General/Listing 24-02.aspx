<%@ Page Language="C#" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("The page has been submitted!");
    }
</script>


<!DOCTYPE html>
<html>
<head runat="server">
    <title>AlwaysVisibleControlExtender</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" />
        <asp:AlwaysVisibleControlExtender ID="AlwaysVisibleControlExtender1" 
            runat="server" TargetControlID="Panel1" HorizontalOffset="10" 
            HorizontalSide="Right" VerticalOffset="10">
        </asp:AlwaysVisibleControlExtender>
        Form Element : 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox24" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox25" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox26" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox27" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox28" runat="server"></asp:TextBox>
        <br />

        Form Element : 
        <asp:TextBox ID="TextBox29" runat="server"></asp:TextBox>
        <br />
        Form Element : 
        <asp:TextBox ID="TextBox30" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            <asp:Button ID="Button1" runat="server" Text="Submit" 
             OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Clear" />
        </asp:Panel>
    </div>
    </form>
</body>
</html>
