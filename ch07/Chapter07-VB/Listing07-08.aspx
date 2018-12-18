<%@ Page Language="VB" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim myForm As Control = Page.FindControl("Form1")
        Dim c1 As Control = LoadControl("Listing07-04.ascx")
        myForm.Controls.Add(c1)
        
        If c1.GetType() Is GetType(Listing07_04) Then
            CType(c1, Listing07_04).ID = "Listing07_04"
            CType(c1, Listing07_04).Text = "Text about our custom user control (not cached)"
        ElseIf c1.GetType() Is GetType(PartialCachingControl) _
            And Not (IsNothing(CType(c1, PartialCachingControl).CachedControl)) Then
            Dim listingControl As Listing07_04 = _
                CType(CType(c1, PartialCachingControl).CachedControl, Listing07_04)
            listingControl.ID = "Listing07_04"
            listingControl.Text = "Text about our custom user control (partially cached)"
        End If
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dynamically adding a user control</title>
</head>
<body>
    <form id="form1" runat="server">
    </form>
</body>
</html>