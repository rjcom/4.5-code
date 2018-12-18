<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>
<!DOCTYPE html>
<script runat="server">
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filepath = "C:\\Uploads";
        HttpFileCollection uploadedFiles = Request.Files;
        for (int i = 0; i < uploadedFiles.Count; i++)
        {
            HttpPostedFile userPostedFile = uploadedFiles[i];
            try
            {
                if (userPostedFile.ContentLength > 0)
                {
                    Label1.Text += "<u>File #" + (i + 1) +
                      "</u><br>";
                    Label1.Text += "File Content Type: " +
                      userPostedFile.ContentType + "<br>";
                    Label1.Text += "File Size: " +
                      userPostedFile.ContentLength + "kb<br>";
                    Label1.Text += "File Name: " +
                      userPostedFile.FileName + "<br>";
                    userPostedFile.SaveAs(filepath + "\\" +
                  Path.GetFileName(userPostedFile.FileName));
                    Label1.Text += "Location where saved: " +
                  filepath + "\\" +
                  Path.GetFileName(userPostedFile.FileName) +
                  "<p>";
                }
            }
            catch (Exception Ex)
            {
                Label1.Text += "Error: <br>" + Ex.Message;
            }
        }
    }
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