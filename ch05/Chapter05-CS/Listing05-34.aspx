<%@ Page Language="C#" %>
<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
            try
            {
                FileUpload1.SaveAs("C:\\Uploads\\" + FileUpload1.FileName);
                Label1.Text = "File name: " +
                    FileUpload1.PostedFile.FileName + "<br>" +
                    FileUpload1.PostedFile.ContentLength + " kb<br>" +
                    "Content type: " +
                    FileUpload1.PostedFile.ContentType;
            }
            catch (Exception ex)
            {
                Label1.Text = "ERROR: " + ex.Message.ToString();
            }
        else
        {
            Label1.Text = "You have not specified a file.";
        }
    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FileUpload Server Control</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:FileUpload ID="FileUpload1" runat="server" />
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