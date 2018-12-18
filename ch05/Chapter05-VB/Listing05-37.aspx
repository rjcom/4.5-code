<%@ Page Language="VB" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html>
<script runat="server">
    Protected Sub Button1_Click(ByVal sender As Object,
        ByVal e As System.EventArgs)
        Dim filepath As String = "C:\Uploads"
        Dim uploadedFiles As HttpFileCollection = Request.Files
        Dim i As Integer = 0
        Do Until i = uploadedFiles.Count
            Dim userPostedFile As HttpPostedFile = uploadedFiles(i)
            Try
                If (userPostedFile.ContentLength > 0) Then
                    Label1.Text += "<u>File #" & (i + 1) & "</u><br>"
                    Label1.Text += "File Content Type: " &
                        userPostedFile.ContentType & "<br>"
                    Label1.Text += "File Size: " &
                        userPostedFile.ContentLength & "kb<br>"
                    Label1.Text += "File Name: " &
                        userPostedFile.FileName & "<br>"
                    userPostedFile.SaveAs(filepath & "\" &
                    Path.GetFileName(userPostedFile.FileName))
                    Label1.Text += "Location where saved: " &
                        filepath & "\" &
                        Path.GetFileName(userPostedFile.FileName) &
                        "<p>"
                End If
            Catch ex As Exception
                Label1.Text += "Error:<br>" & ex.Message
            End Try
            i += 1
        Loop
    End Sub
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FileUpload Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </p>
        <p>
            <asp:FileUpload ID="FileUpload2" runat="server" />
        </p>
        <p>
            <asp:FileUpload ID="FileUpload3" runat="server" />
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Upload"
                OnClick="Button1_Click" />
        </p>
        <p>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>