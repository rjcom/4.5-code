<%@ Page Language="VB" %>

<script runat="server">
  Protected Sub AnalyzeName_Click(ByVal sender As Object,
     ByVal e As System.EventArgs)
        
    Dim Name As New VBLibrary.VBClass1()
    If (FirstName.Text.Length > 0) Then
      Name.FirstName = FirstName.Text
    End If
        
    If (LastName.Text.Length > 0) Then
      Name.LastName = LastName.Text
    End If
        
    FirstName.Text = Name.FirstName
    LastName.Text = Name.LastName
    FullName.Text = Name.FullName
    FullNameLength.Text = Name.FullNameLength.ToString()
        
  End Sub
</script>
        
<html xmlns="http://www.w3.org/1999/xhtml" >
  <head id="Head1" runat="server">
     <title>Using COM Components</title>
  </head>
  <body>
    <form id="form1" runat="server">
      <p>
        <asp:Label ID="Label1" runat="server">First Name:</asp:Label>
        &nbsp;
        <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>
      </p>
      <p>
        <asp:Label ID="Label2" runat="server">Last Name:</asp:Label>
        &nbsp;
        <asp:TextBox ID="LastName" runat="server"></asp:TextBox>
      </p>
      <p>
        <asp:Label ID="Label3" runat="server">Full Name:</asp:Label>
        &nbsp;
        <asp:Label ID="FullName" runat="server"
         Font-Bold="True">0</asp:Label>
      </p>
      <p>
        <asp:Label ID="Label4" runat="server">Full Name Length:</asp:Label>
        &nbsp;
        <asp:Label ID="FullNameLength" runat="server"
         Font-Bold="True">0</asp:Label>
      </p>
      <p>
        <asp:Button ID="AnalyzeName" runat="server"
         OnClick="AnalyzeName_Click" Text="Analyze Name"></asp:Button>
      </p>
    </form>
  </body>
</html>
