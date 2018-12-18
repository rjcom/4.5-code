<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        If IsNothing(Session("Listing07-04")) Or
            Not (CBool(Session("Listing07-04"))) Then
          
            Dim myForm As Control = Page.FindControl("Form1")
            Dim c1 As Control = LoadControl("Listing07-04.ascx")
            CType(c1, Listing07_04).Text = "Loaded after first page load"
            myForm.Controls.Add(c1)
          
            Session("Listing07-04") = True
        End If
    End Sub
          
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        If Not IsNothing(Session("Listing07-04")) And
            (CBool(Session("Listing07-04"))) Then
          
            Dim myForm As Control = Page.FindControl("Form1")
            Dim c1 As Control = LoadControl("Listing07-04.ascx")
            CType(c1, Listing07_04).Text = "Loaded after a postback"
            myForm.Controls.Add(c1)
        End If
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Load Control" 
            OnClick="Button1_Click" />    
    </div>
    </form>
</body>
</html>