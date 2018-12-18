<%@ Page Language="C#" %>

<!-- Won't work without creating the appropriate roles in the ASPNETDB.MDF file first -->

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Changing the View</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:LoginStatus ID="LoginStatus1" Runat="server" />
        <p>
        <asp:LoginView ID="LoginView1" Runat="server">
            <LoggedInTemplate>
                Here is some REALLY important information that you should know 
                about all those people that are not authenticated!
            </LoggedInTemplate>
            <AnonymousTemplate>
                Here is some basic information for you.
            </AnonymousTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="Admins">
                    <ContentTemplate>
                       You are an Admin!
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="CoolPeople">
                    <ContentTemplate>
                       You are cool!
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView><p>
    </form>
</body>
</html>
